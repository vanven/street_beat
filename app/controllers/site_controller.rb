class SiteController < ApplicationController
  def index
  	@display = 'hidden'
  end

  def privacy
  end

  def terms
  end

  
=begin
  def current_user=(user)
    @current_user = user
  end

  def signed_in?
    !current_user.nil?
  end
=end


end
