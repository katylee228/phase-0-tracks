require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("scores.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS scores(id INTEGER PRIMARY KEY, name VARCHAR(255), scores INT, email VARCHAR(355))
SQL

db.execute(create_table_cmd)


def create_scores(db, name, scores,email)
	db.execute("INSERT INTO scores(name, scores,email) VALUES(?,?,?)", [name,scores,email])
end

100.times do 
	create_scores(db, Faker::Name.name, Faker::Number.between(0,100), Faker::Internet.email)
end

scores = db.execute("SELECT * FROM scores")


puts "Sorting students who passed the test:"
scores.each do |student|
	if student['scores'] > 60 
		puts "#{student["id"]}|#{student['name']}"
	end 
end 
