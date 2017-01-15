
require 'sqlite3'

# create SQLite3 database 
	# (the equivalent of sqlite3 kittens.db on command line)
	# store in variable
db = SQLite3::Database.new("movies.db")


create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    year INT,
    rating INT
  )
SQL

db.execute(create_table_cmd)
# db.results_as_hash = true


movies = db.execute("SELECT * FROM movies")

# db.execute("INSERT INTO movies (title, year, rating) VALUES ('Casablanca', 1942, 5)")




puts "Enter a movie title:"
movie_title = gets.chomp
puts "And its release year:"
movie_year = gets.chomp.to_i
puts "And rate the movie out of 5:"
movie_rating = gets.chomp.to_i

movie_info = movie_title, movie_year, movie_rating
def create_movie(db, title, year,rating)
  db.execute("INSERT INTO movies (title, year, rating) VALUES (?, ?, ?)", [movie_info])
end
