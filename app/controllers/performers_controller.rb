class PerformersController < ApplicationController
  def index
  	@performers = Performer.all  

	  if params[:term]
	    @performers = Performer.where('name iLIKE ?', "%#{params[:term]}%")
	  else
	    @performers = Performer.all
	  end
   	respond_to do |format|  
	      format.html # index.html.erb  
	  # Here is where you can specify how to handle the request for "/people.json"
	      format.json { render :json => @performers.to_json }
    end
  end

  def new
  end

  def edit
  end
end

