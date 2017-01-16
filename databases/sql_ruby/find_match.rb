require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("match_info.db")

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS match_info(id INTEGER PRIMARY KEY, prefix VARCHAR(255), name VARCHAR(255), age INT, location VARCHAR(255))
SQL

