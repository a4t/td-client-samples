require './db_client'

db_client = DBClient.new(ENV['TD_API_KEY'])
result = db_client.query(ENV['TD_DB_NAME'], ENV['TD_QUERY'])
puts(result)
