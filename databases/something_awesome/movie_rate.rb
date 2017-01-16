# User can add a movie to a database with title, year, and rating
# User can play game with these movies and add their name to a scoreboard



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

create_hs_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS high_scores(
    id INTEGER PRIMARY KEY,
    score INT,
    name VARCHAR(255)
  )
SQL
# execute the create table command
db.execute(create_table_cmd)
db_high.execute(create_hs_table_cmd) 

# movies variable contains all the movie information
# high scores variables contains all high score information
movies = db.execute("SELECT * FROM movies")
high_scores = db_high.execute("SELECT * FROM high_scores")
high_scores_order = db_high.execute("SELECT score, name FROM high_scores ORDER BY score DESC")


# create method that puts the info into the database using placeholders
def create_movie(db, title, year,rating)
  db.execute("INSERT INTO movies (title, year, rating) VALUES (?, ?, ?)", [title,year,rating])
end

def create_high_scores(db_high, score, name)
  db_high.execute("INSERT INTO high_scores (score, name) VALUES (?,?)", [score, name])
end

# USER INTERFACE

# use a loop to get user data, asking how many movies they want to add
	# get user input for title, year, and rating
	# call method using that data
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

# use if statement to ask if player wants to proceed
	# use while loop to ask question about the movies in the database
	# increment score for correct answers
	# Give user opportunity to add name to high score list

puts "Would you like to play a game? Y/N"
game = gets.chomp
if game == "Y"
	i = 0
	my_score = 0
	shuf_movie = movies.shuffle # so it doesn't ask same moves over and over
	while i < 5
		puts "What year did #{shuf_movie[i][1]} come out?"
		answer = gets.chomp.to_i
		if answer == shuf_movie[i][2]
			my_score += 10
		else
			puts "Nope!"
		end
	i += 1
	end
	my_score
	puts "Your score was #{my_score}! Type your name to add it to the high scores! If not, type 'N'."
	my_name = gets.chomp
	if my_name == 'N'
		puts "Bye!"
	else
		create_high_scores(db_high, my_score, my_name)
	end
elsif game == "N"
	puts "Bye!"
end

# Let user see high scores
	# print out scores in descending order

puts "Would you like to see the high scores? Y/N"
see_scores = gets.chomp
if see_scores == 'Y'
	high_scores_order.each do |high_s|
		puts "#{high_s['name']} scored #{high_s['score']}"
	end
elsif see_scores == 'N'
	puts "Bye!"
end

# the only problem is that the current player does not show up on high scores 




