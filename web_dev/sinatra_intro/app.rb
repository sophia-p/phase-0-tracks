# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

get '/great_job/' do
  if params[:name]
    "Great job, #{params[:name]}!"
  else
    "Great job!"
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/contact' do
  "314 Ocean Drive.,<br>Neptune, California 90909"
end

get '/:num_1/plus/:num_2' do
  result = params[:num_1].to_i + params[:num_2].to_i
  "#{params[:num_1]} plus #{params[:num_2]} is #{result}"
end



# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
"#{student['id'].to_s} is #{student['name']}"
end

get '/students_age/:age' do
  student_age = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])[0]
  "#{student_age['name']} is #{student_age['age'].to_s}"
end

# Web app frameworks in Ruby include Ruby on Rails, Hanami, Padrino, and Volt
# PostgreSQL (including Data Mapper and Active Record) and Mongo are among the other databases that ccan be used in Sinatra.
# A web stack refers to everything requries to build a web site. This includes an "operating system, programming language, database software and a web server." 
# (whatis.techtarget.com/definition/Web-stack)



