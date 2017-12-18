# app.rb
require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/reloader' if development?

require_relative 'endpoints/posts'

# Rota padrão
get '/' do
  ENV['RACK_ENV'] = 'development'
  @env = ENV['RACK_ENV'].to_s.upcase
  "Welcome to nBlog API v2.5 | Environment: #{@env}."
end
