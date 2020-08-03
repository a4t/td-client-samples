require 'td-client'

class DBClient
  def initialize(apikey)
    @client = TreasureData::Client.new apikey
  end
  attr_reader :headers

  def wait_finished db_name,sql,type, &block
    job = @client.query(db_name, sql,
                        result_url=nil, priority=nil, retry_limit=nil,
                        opts={type: type})

    puts "waiting until job_id:#{job.job_id} finished... "
    until job.finished?
      sleep 2
      job.update_progress!
    end
    job.update_status!
    puts "job_id:#{job.job_id} finished, status:#{job.status} "

    block.call(job)
  end

  def query(db_name, sql, type: nil)
    type ||= :hive
    results = []
    wait_finished(db_name,sql,type) do |job|
      job.result_each do |row|
        results << {label: row[0], value: row[1]}
      end
      @headers = results.map{|m| m[:label]} unless @headers
    end
    results
  end
end
