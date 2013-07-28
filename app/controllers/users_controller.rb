class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find params[:id]
	end

	def new
		@user = User.new

		# render :new, layout: false
	end

	def create
		@user = User.create user_params

		if @user
			redirect_to root_url
		else
			render :new
		end
	end

	def destroy
		user = User.find params[:id]
		user.destroy

		redirect_to users_path, status: 303
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
