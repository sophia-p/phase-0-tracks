
require 'sqlite3'

# create SQLite3 database 
	# store in variable
db = SQLite3::Database.new("movies.db")

# create the table if it doesn't already exist using fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS movies(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    year INT,
    rating INT
  )
SQL
# execute the create table command
db.execute(create_table_cmd)

# movies variable contains all the movie information
movies = db.execute("SELECT * FROM movies")


# create method that puts the info into the database
def create_movie(db, title, year,rating)
  db.execute("INSERT INTO movies (title, year, rating) VALUES (?, ?, ?)", [title,year,rating])
end

# call the method using the wanted arguments
puts "How many movies would you like to add?"
done = gets.chomp.to_i
until done == 0 do
	puts "Enter a movie title:"
	movie_title = gets.chomp
	puts "And its release year:"
	movie_year = gets.chomp.to_i
	puts "And rate the movie out of 5:"
	movie_rating = gets.chomp.to_i
	create_movie(db, movie_title, movie_year,movie_rating)
	done -= 1
end
