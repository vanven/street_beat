class FestsController < ApplicationController
  def new
  	@fest = Fest.new()
  end

  def create
	@fest = Fest.new(params[:fest])
	@fest.save
	puts "************"
	puts params[:fest]

	redirect_to root_url  	
  end
end
