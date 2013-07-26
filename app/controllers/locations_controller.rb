class LocationsController < ApplicationController
  def index
  	@locations = Location.all

    if params[:term]
      @location = Location.where('name iLIKE ?', "%#{params[:term]}%")
    else
      @location = Location.all
    end
    respond_to do |format|  
        format.html # index.html.erb  
    # Here is where you can specify how to handle the request for "/people.json"
        format.json { render :json => @location.to_json }
    end
  end

  def show
  	@location = Location.find params[:id]
  end

  def new
  end

  def edit
  end
end
