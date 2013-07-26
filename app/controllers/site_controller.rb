class SiteController < ApplicationController
  def index
  	unless session 
  		@display = 'none'
  	else
  		@display = 'inline'
  	end
  end

  def privacy
  end

  def terms
  end
end
