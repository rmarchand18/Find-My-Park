class Neighborhood
  
  attr_accessor :location, :venues, :game_venue
  
  ##!!!NEEDS TO BE FILLED OUT WITH CLIENT ID AND SECRET PROVIDED BY FOURSQUARE
  CLIENT_SECRET = "VYJTGNTSNT1OHG0AURLNS0DVXPS5GKBMSW0QBKFFAFK3NMAU"
  CLIENT_ID =  "KXSEM1VPP4MXSEWX1UZCLMHONDUF5CLAHH2G4CFZUOBL1NUD"

  def initialize(location , game_venue)
    @location = location
    @game_venue = game_venue
    @venues = {}
  end

  def search
    uri = "https://api.foursquare.com/v2/venues/explore?near=#{@location}&query==#{CGI.escape(@game_venue)}&client_id=#{CLIENT_ID}&client_secret=#{CLIENT_SECRET}&v=#{Time.now.strftime("%Y%m%d")}"
    encoded = URI.parse(URI.encode(uri)) #to handle spaces in the location
    @venues_info = HTTParty.get(encoded)['response']['groups'][0]["items"]
  end

  def get_venue_ids
    @venues_info.each do |venue|
      @venues[venue["venue"]["name"]]=venue["venue"]["location"]["address"]
    end
    @venues
  end

end