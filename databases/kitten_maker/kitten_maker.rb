# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker' #use for fake data

# create SQLite3 database 
	# (the equivalent of sqlite3 kittens.db on command line)
	# store in variable
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true

#results_as_hash so you can return rows as hashes
	#it is an instance attribute method, so it is set on database instance (the .new)

# learn about fancy string delimiters
	#declare a string
	#heredoc <<-SQL begin quote SQL end quote (string). Should be delimited
	#by terms that won't appear within
	#this isn't running SQL yet (until execute)
	# IF NOT EXISTS keeps helps with persistent data. Creates if 
	# it didn't already exist

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL


# create a kittens table (if it's not there already)
# run the string
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
# put in method so it's not hard-coded
# or use block that repeats
# data created is remembered unless explicity deleted
# considered bad idea to just drop data someone's given you into SQL (so no interpolation)
# use ?s as placeholders
# optional second argument is array of values you want it to drop in (in same order they
# appear in ?, ?)
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

# call method above
# default age is 0
# user Faker for names
# double colon (::) is scope resolution operator, used for namespacing
# 	class and modules, etc (which are basically what gems are) can have nested
# 	classes and modules inside them
10.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# puts kittens.class
# p kittens
# name and age are strings, not symbols
kittens.each do |kitten|
 puts "#{kitten['name']} is #{kitten['age']}"
end

# puts "Get a kitten. Type a number"
# kit_num = gets.chomp.to_i
# kittens.each do |kitten|
# 	if (kitten['name']).length == kit_num
# 		return kitten['name']
# 	end
# end













