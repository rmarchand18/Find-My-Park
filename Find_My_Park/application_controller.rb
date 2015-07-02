require 'bundler'
Bundler.require

require './models/model.rb'

class MyApp < Sinatra::Base
  attr_accessor :game_type, :play_location

  get '/' do
<<<<<<< HEAD
    erb :index 
  end
  
  post '/results' do 
    @play_location = params["play_location"]
    @game_type = params["game_type"]
   
    
  end

=======
    erb :index
  end
  
  post '/results' do
    @play_location = params["play_location"]
    @game_type = params["game_type"]
    
    
 end
 
  
>>>>>>> 0dadce0d439995aafa0f5538f0ba6502dea7b0f1
end