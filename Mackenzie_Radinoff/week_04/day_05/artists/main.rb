require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'database.sqlite3'
)

ActiveRecord::Base.logger = Logger.new(STDERR)

class Album < ActiveRecord::Base
  belongs_to :artist
end

class Artist < ActiveRecord::Base
  has_many :albums
end

get '/' do
  erb :home
end

get '/artists' do
  @artists = Artist.all
  erb :artists_list
end

get '/albums' do
  @albums = Album.all
  erb :albums_list
end

get '/artists/new' do
  erb :artists_new
end

get '/artists/:id' do
 @artist = Artist.find params[:id]
 erb :artist_show
end

get '/albums/new' do
  erb :albums_new
end

 get '/albums/:id' do
   @album = Album.find params[:id]
   erb :album_show
 end


# post 'artists/:id' do
#   @artists = Artist.find params[:id]
#   artist.name = params[:name]
#   artist.origin = params[:origin]
#   artist.years_active = params[:years_active]
#   artist.image = params[:image]
#   erb :artist_show
# end
#
# post 'albums/:id' do
#   @albums = Album.find params[:id]
#   album.name = params[:name]
#   album.year = params[:year]
#   album.image = params[:image]
#   erb :album_show
# end
