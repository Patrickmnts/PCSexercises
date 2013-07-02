require 'sinatra'

get '/' do
  'Hello, WORLD!!'
end

post '/' do


get '/form' do
  erb :form
end

post '/form' do
  "I once knew a guy named #{params[:firstname]} #{params[:lastname]}!"
end

get '/list/:firstname/:lastname' do
  erb :list
end
