require 'bundler'
Bundler.require

<<<<<<< HEAD
require './models/neighberhood.rb'

class MyApp < Sinatra::Base

=======
require './models/neighborhood.rb'

class MyApp < Sinatra::Base
>>>>>>> 5be8d2f5c4ac7bf1a12f1c6596807059c9343fac

  get '/' do
    erb :index 
  end
  
  post '/results' do 
    @play_location = params["play_location"]
    @game_type = params["game_type"]
<<<<<<< HEAD
    @neighborhood = Neighborhood.new(params["play_location"])
    @neighborhood.search
    @neighborhood.get_venue_ids
    @locations =  @neighborhood.venues
    erb :results
  end
  
=======
    @neighborhood = Neighborhood.new(params["play_location"], @game_type)
    @neighborhood.search
    @neighborhood.get_venue_ids
    @locations = @neighborhood.venues
    erb :results
  end

>>>>>>> 5be8d2f5c4ac7bf1a12f1c6596807059c9343fac
end