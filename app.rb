require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb(:index)
end

get '/secret' do
  erb(:index)
end

get '/makers' do
  erb(:index)
end

get '/cat' do
  erb(:index)
end