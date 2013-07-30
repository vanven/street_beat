class SiteController < ApplicationController
  def index
    user = User.find_by(email: params[:email])

    @concerts = Concert.all 

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
