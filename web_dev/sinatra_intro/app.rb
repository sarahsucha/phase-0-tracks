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

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
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
  student.to_s
end

# write a GET route that displays and address
get '/contact/' do
  "My address is:<br>#{params[:number]} #{params[:name]} St.<br>#{params[:city]}, #{params[:state]}  #{params[:zip]}"
end
# http://localhost:9393/contact/?number=1307&name=Hayes&city=San%20Francisco&state=CA&zip=94117
# space in HTTP request is %20

# write a GET route
  # IF a person's name is provided, tell that person 'great job'
  # ELSE a name is not provided, just say 'great job'

get '/great_job/' do
  person = params[:name]
  if person
    "Great Job, #{person}!"
  else
    "Great Job!"
  end
end
# http://localhost:9393/great_job/?person=Sarah
# http://localhost:9393/great_job

# write a GET route that adds two integers
  # provide two integers in HTTP request
  # convert integers provided in HTTP as string to integers and add
  # return response with string representing addition problem.
get '/:number1/plus/:number2' do
  number1 = params[:number1]
  number2 = params[:number2]
  sum = number1.to_i + number2.to_i
  "#{number1} + #{number2} = #{sum}"
end
