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
    @location = Location.new(make_address)
    

    if @location.save
      redirect_to new_concert_path
    else
      render :new
    end

  end

  def edit
    
  end

  
  private

  def make_address

    location = params[:location]
      #zip_code 
    location[:zip_code] = location[:zip_code].slice(0, 5)
    if location[:zip_code].to_i.to_s.length != 5
      redirect_to :new_location
    end

    @city
    @state
    @zip_code = location[:zip_code]
  
    if location[:city] == '' or location[:state] == '' and location[:zip_code] != ''
      puts('*' * 20)
      puts(location[:zip_code])
      @city = location[:zip_code].to_region(:city => true)
      @state = location[:zip_code].to_region(:state => true)
    else
      @city = location[:city]
      @state = location[:state]
    end

    {name: location[:name], address: location[:street_line1] + ',' + location[:street_line2] + ',' + @city  + ',' + @state + ',' + @zip_code}
  end

  def zip_from_city_and_state
    region = params[:city].to_s + params[:state].to_s
    @location[:zip_code] = region.to_zip
  end




end
