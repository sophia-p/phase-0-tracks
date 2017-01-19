# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/' do
  @courses = db.execute("SELECT * FROM courses")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/courses' do
  erb :courses
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# create new course form
post '/students' do
	db.execute("CREATE TABLE courses (title, level, id)")
	db.execute("INSERT INTO courses (title, level, id) VALUES (?,?,?)", [params['title'], params['level'], params['id'].to_i])
	redirect '/'
end

# add static resources