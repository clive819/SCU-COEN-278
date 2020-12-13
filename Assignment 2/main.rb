#!/usr/bin/ruby
require 'sinatra'
require 'sinatra/reloader' if development?
require "./authentication"
require "./users"
require "./game"


enable :sessions

# Configure Database
configure :development do
  DataMapper.setup(
    :default,
    "sqlite3://#{Dir.pwd}/data.db"
  )
end

configure :production do
  DataMapper.setup(
    :default,
    ENV['DATABASE_URL']
  )
end

User.auto_upgrade!


get '/' do
  if session[:login]
      @title = "Gamble"
      erb :gamble
  else
      @title = "Login"
      erb :login
  end
end
