class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def show
  	@location = Location.find params[:id]
  end

  def new
  end

  def edit
  end
end
