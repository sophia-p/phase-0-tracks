
require 'sqlite3'

# create SQLite3 database 
	# (the equivalent of sqlite3 kittens.db on command line)
	# store in variable
db = SQLite3::Database.new("movies.db")



# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS movies(
#     id INTEGER PRIMARY KEY,
#     title VARCHAR(255),
#     year INT,
#     rating INT,
#   )
# SQL

# db.execute(create_table_cmd)
# db.execute("INSERT INTO movies (title, year, rating) VALUES ('Casablanca', 1942, 5)")