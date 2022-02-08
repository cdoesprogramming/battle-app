require 'sinatra'
require 'sinatra/reloader' if development?

#attr_reader :cat_name

get '/' do
  "hello!"
end

get '/secret' do
  "secret"
end

get '/makers' do
  "makers"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end

post '/form' do
  p params[:name]
  @name = params[:name]
  erb(:form)
end