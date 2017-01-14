require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("dbc_test.db")

create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS dbc_test(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		score INT
		)
SQL

db.execute(create_table_cmd)

def create_name(db, name, score)
	db.execute("INSERT INTO dbc_test(name,score) VALUES(?,?)", [name, score])
end

100.times do 
	create_name(db, Faker::Name.name, Faker::Number.between(from = 0, to = 100))
end


