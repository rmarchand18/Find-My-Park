require 'bundler'
Bundler.require

require './models/neighborhood.rb'

class MyApp < Sinatra::Base


  get '/' do
    erb :index 
  end
  
  post '/results' do 
    @neighborhood = Neighborhood.new(params["play_location"], params["game_type"])
    @neighborhood.search
    @neighborhood.get_venue_ids
    @locations = @neighborhood.venues
    erb :results
  end


end