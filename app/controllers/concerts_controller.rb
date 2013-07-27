class ConcertsController < ApplicationController
  def index
  	@concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create 
    #@concert = Concert.create params.require(:concert).permit(:name, :occurs_at, :duration, :cover_charge)
    #@concert.performers << Performer.find(params[:performer_id])
    #@concert.locations << Location.find(params[:location_id])
    

  end




  def edit
  	@concert = Concert.find params[:id]
  end

  def show
  	@concert = Concert.find params[:id]
  	@concert_time = @concert.occurs_at.strftime("%A, %d %B %Y at %I:%M %P")
  end
end
