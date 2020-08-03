#!/bin/sh

td query -d ${TD_DB_NAME} -w -T presto "${TD_QUERY}"
