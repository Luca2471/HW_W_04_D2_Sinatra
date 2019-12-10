require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry'

require_relative('./models/film')

get '/index' do
  @films = Film.all()
  erb(:all)
end
