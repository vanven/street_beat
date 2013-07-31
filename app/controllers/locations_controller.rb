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
      
    @location.make_address

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
    params.require(:location).permit(:name, :street_line1, :street_line2, :zip_code)
  end

  def make_address
    
    if params[:city] == nil or params[:state] == nil and params[:zip_code] != nil
      city = params[:zip_code].to_region(:city => true)
      state = params[:zip_code].to_region(:state => true)
    else
      city = params[:city]
      state = params[:state]
    end

    @location.address = params[:street_line1] + ',' + params[:street_line2] + ',' + city  + ',' + state

  end

  def zip_from_city_and_state
    region = params[:city].to_s + params[:state].to_s
    @location[:zip_code] = region.to_zip
  end

end
