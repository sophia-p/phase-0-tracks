
require 'sqlite3'

# create SQLite3 database 
	# store in variable
db = SQLite3::Database.new("movies.db")
db_high = SQLite3::Database.new("high_scores.db")
db_high.results_as_hash = true

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

puts "Would you like to play a game? Y/N"
game = gets.chomp
if game == "Y"
	i = 0
	my_score = 0
	while i < 3
		puts "What year did #{movies[i][1]} come out?"
		answer = gets.chomp.to_i
		if answer == movies[i][2]
			my_score += 10
		end
	i += 1
	end
	my_score
	puts "Your score was #{my_score}! Type your name to add it to the high scores!"
	my_name = gets.chomp
end

# create high score database
# db_high = SQLite3::Database.new("high_scores.db")
create_hs_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS high_scores(
    id INTEGER PRIMARY KEY,
    score INT,
    name VARCHAR(255)
  )
SQL

db_high.execute(create_hs_table_cmd)

high_scores = db_high.execute("SELECT * FROM high_scores")

def create_high_scores(db_high, score, name)
  db_high.execute("INSERT INTO high_scores (score, name) VALUES (?,?)", [score, name])
end

if my_score > 10
	create_high_scores(db_high, my_score, my_name)
end

puts "Would you like to see the high scores? Y/N"
see_scores = gets.chomp
if see_scores == 'Y'
	high_scores.each do |score|
		puts "#{score['name']} scored #{score['score']}"
	end
end




