require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("scores.db")
db.results_as_hash = true 

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS scores(id INTEGER PRIMARY KEY, name VARCHAR(255), scores INT)
SQL

db.execute(create_table_cmd)