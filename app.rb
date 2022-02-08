require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello!"
end

get '/secret' do
  "secret"
end

get '/makers' do
  "makers"
end

get '/cat' do
  erb(:index)
end