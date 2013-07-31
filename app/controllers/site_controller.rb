class SiteController < ApplicationController
  def index
    user = User.find_by(email: params[:email])

    @concerts = Concert.all 

    @concertsjs = @concerts.map do |concert|
      lat_lng = concert.location.lat_lng.split(", ")
      "{" +
      "lat: #{lat_lng[0]}," +
      "lng: #{lat_lng[1]}," +
      "title: '#{concert.name}'," +
      "id: #{concert.id}" +
      "}"
    end.join(",").html_safe

    @concerts.each do |c| 
      puts c
      puts c.location.lat_lng
    end
    
  end

  def privacy
  end

  def terms
  end
end
