require 'sqlite3'
require 'faker'
require 'net/smtp'
require 'rubygems'
require 'mailfactory'

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

def send_email(to,opts={})
  opts[:server]      ||= 'localhost'
  opts[:from]        ||= 'email@example.com'
  opts[:subject]     ||= "You need to see this"
  opts[:body]        ||= "Important stuff!"
  
  msg = <<END_OF_MESSAGE
From: <#{opts[:from]}>
To: <#{to}>
Subject: #{opts[:subject]}

#{opts[:body]}
END_OF_MESSAGE

  Net::SMTP.start(opts[:server]) do |smtp|
    smtp.send_message msg, opts[:from], to
  end
end


puts "Sorting students who passed the test:"
scores.each do |student|
	if student['scores'] > 60 
		puts "#{student["id"]}|#{student['name']}"
		#send_email(student['email'], opts={server: 'localhost', from: 'email@example.com', subject: "Congraulations", body: "You passed the DBC test!"})
	end 
end 

