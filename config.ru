require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './models/Room.rb'
require_relative './controllers/rooms_controller.rb'

# Middleware
use Rack::MethodOverride

run RoomsController
