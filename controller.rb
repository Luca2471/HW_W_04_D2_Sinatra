require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry'

require_relative('./models/film')
also_reload('./models/*')

get '/' do
  "Hello World"
end

get '/films' do
  @films = Film.all()
  erb(:films)
end
