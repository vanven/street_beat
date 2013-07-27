class ConcertsController < ApplicationController
  def index
  	@concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create 
    @concert = Concert.create params.require(:concert).permit(:name, :occurs_at, :duration, :cover_charge)
    
    time_slot_params["time_slots"].each do |ts|
      time_slot = TimeSlot.create :time_slot => ts 
      @concert.time_slots << time_slot  
    end

    
    
    @concert.performers << Performer.find(params[:performer_id])
    
    @concert.locations << Location.find(params[:location_id])
    
    if @concert 
      redirect_to root_url
    else
      redirect_to root_url, alert: "concert not created"
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

  def time_slot_params
    params.permit(:time_slots => [:performer_id, :occurs_at, :duration])
  end
end
