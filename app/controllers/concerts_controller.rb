class ConcertsController < ApplicationController
  def index
  	@concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create 
    @concert = Concert.new(concert_params)
    
    if @concert.save
      redirect_to concerts_path
    else
      render :new
    end
  end

  def edit
  	@concert = Concert.find params[:id]
  end

  def show
  	@concert = Concert.find params[:id]
  	@concert_time = @concert.occurs_at.strftime("%A, %d %B %Y at %I:%M %P")
  end
  
  private
  
  def concert_params
    params.require(:concert).permit!
  end
end
