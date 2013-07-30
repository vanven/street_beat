class ConcertsController < ApplicationController
  def index
  	@concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    params[:concert].delete(:location)
    @concert = Concert.new(concert_params)
    @concert.location = Location.find(params[:concert][:location_id])

    if @concert.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  	@concert = Concert.find params[:id]
  end

  def show
  	@concert = Concert.find params[:id]
  end
  
  private
  
  def concert_params    
    params.require(:concert).permit!
  end

end
