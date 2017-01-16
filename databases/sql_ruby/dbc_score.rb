require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("scores.db")
db.result_as_hash = true 

db.execute ("SELECT * FROM scores.db")