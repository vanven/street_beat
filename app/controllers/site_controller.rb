class SiteController < ApplicationController
  def index
    user = User.find_by(email: params[:email])

    @concerts = Concert.all 

    @concertsjs = @concerts.map do |concert|
      latitude = concert.location.latitude.to_s
      longitude = concert.location.longitude.to_s
      "{" +
      "lat: #{latitude}," +
      "lng: #{longitude}," +
      "title: '#{concert.name}'," +
      "id: #{concert.id}" +
      "}"
    end.join(",").html_safe

  end

  def privacy
  end

  def terms
  end

  
=begin
  def current_user=(user)
    @current_user = user
  end

  def signed_in?
    !current_user.nil?
  end
=end


end
