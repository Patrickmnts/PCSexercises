# Examples worked through on integralist.co.uk

require 'sinatra'

# Load the 'home' template on root.
get '/' do
  erb :home
end

get '/projects' do
  erb :projects
end

post '/projects' do
  user = params[:user]
  pass = params[:password]
  return user + ' ' + pass
end

post '/contact' do
  redirect '/contact-error/name' if params[:user].empty?
  redirect '/contact-error/email' if params[:email].empty?
  redirect '/contact-error/message' if params[:message].empty?

  erb :contact_success
end

get '/contact-error/:field' do |field|
  @field = field
  erb :contact_error
end