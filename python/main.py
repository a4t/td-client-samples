import os
import tdclient


class TD:
    def __init__(self, apikey):
        self.tdclient = tdclient.Client(apikey=apikey)

    def query(self, db_name, query):
        job = self.tdclient.query(db_name, query, type="presto")
        job.wait()
        return job.result()


td = TD(os.environ['TD_API_KEY'])
result = td.query(os.environ['TD_DB_NAME'], os.environ['TD_QUERY'])
for row in result:
    print(row)
