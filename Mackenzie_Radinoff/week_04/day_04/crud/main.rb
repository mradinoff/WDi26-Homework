require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pry'

get '/' do
  erb :home
end

get '/movies' do
  @movie = query_db 'SELECT * FROM bill_murray'
  erb :movies_index
end

get '/movie/add' do
  erb :add_movie
end

post '/movies' do
  query_db "INSERT INTO bill_murray (movie_title, director_name, year, image) VALUES
   ('#{params[:movie_title]}','#{params[:director_name]}', '#{params[:year]}', '#{params[:image]}')"
  redirect to('/movies')
end

get '/movies/:id' do
  @movie = query_db "SELECT * FROM bill_murray WHERE id= #{params[:id]}"
  @movie = @movie.first
  erb :movie_page
end



def query_db(sql_statement)
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash=true

  puts sql_statement

  results = db.execute sql_statement
  db.close
  results
end
