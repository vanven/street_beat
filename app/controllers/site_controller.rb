class SiteController < ApplicationController
  def index
    user = User.find_by(email: params[:email])
    # if user
    #     session[:user_id] = user.id
    #     @display = 'block'
    #   else
    #     @display = 'none'
    #     # render :new
    # end

  	# unless session
  	# 	@display = 'none'
  	# else
  	# 	@display = 'inline'
  	# end
  end

  def privacy
  end

  def terms
  end
end
