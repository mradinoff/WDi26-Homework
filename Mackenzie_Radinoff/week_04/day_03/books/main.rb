require 'sinatra'
require 'sinatra/reloader'
require 'HTTparty'
require 'pry'

get '/' do
  erb :home
end

get '/books' do
  @books = params[:books]
  @book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{ book_title  }"
  @book_info = HTTParty.get book_url;
  @image = @book_info["items"]["imageLinks"]["smallThumbnail"]
  erb :books
end
