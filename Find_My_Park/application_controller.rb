require 'bundler'
Bundler.require

require './models/model.rb'

class MyApp < Sinatra::Base
  attr_accessor :game_type, :play_location

  get '/' do
    erb :index 
  end
  
  post '/results' do 
    @play_location = params["play_location"]
    @game_type = params["game_type"]
   
    
  end

end