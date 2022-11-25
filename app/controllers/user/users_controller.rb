class User::UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		if @user.update(user_params)
		        redirect_to user_path(@user)
		else
		   render :edit
		end
	end

	def confirm
		user = current_user
	end

	def hide
		@user = User.find(params[:id])
		@user.destroy
		redirect_to root_path
	end


	private
	def user_params
	    params.require(:user).permit(:name,:email,:profile,:image)
	end
end
