class ConcertsController < ApplicationController
  def index
  	@concerts = Concert.all
  end

  def new
  end

  def edit
  	@concert = Concert.find_by ()
  end

  def show
  	@concert = Concert.find params[:id]
  	@concert_time = @concert.occurs_at.strftime("%A, %d %B %Y at %I:%M %P")
  end
end
