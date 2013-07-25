class PerformersController < ApplicationController
  def index
  	@performers = Performer.all  
  end

  def new
  end

  def edit
  end
end

