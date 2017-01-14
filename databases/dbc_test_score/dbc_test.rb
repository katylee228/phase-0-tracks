require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("test_score.db")

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS test_score(id INTEGER PRIMARY KEY, name VARCHAR(255), score INT)
SQL

db.execute(create_table_cmd)

def create_students(db, name, score)
	db.execute("INSERT INTO test_score(name, score) VALUES(?,?)", [name,score])
end

100.times do 
	create_students(db, Faker::Name.name, Faker::Number.between(from = 0, to = 100))
end

