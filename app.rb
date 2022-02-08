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

get '/cat-form' do
  erb :cat_form  
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

