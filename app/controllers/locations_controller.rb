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
    @location = Location.new
  end

  def create 
    @location = Location.new(location_params)

    if @location.save
      redirect_to concert_new_path
    else
      render :new
    end

  end

  def edit
  end

    private
  
  def location_params    
    params.require(:location).permit(:name, :street_lin1, :street_line2, :zip_code, :lat_lng)
  end
end
