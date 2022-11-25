class Admin::UsersController < ApplicationController

	def index
		@users = User.with_deleted.all
	end

	def show
		@user = User.with_deleted.find(params[:id])
	end

	def edit
		@user = User.with_deleted.find(params[:id])
	end

	def update
		@user = User.with_deleted.find(params[:id])
		if  @user.update(user_params)
		    if  @user.quit == true
		        @user.restore
		        redirect_to admin_users_path
		    else  @user.quit == false
			    @uset.destroy
			    redirect_to admin_users_path
		    end
		else render "edit"
		end

	end

	private
	def user_params
		params.require(:user).permit(:name,:email,:quit,:profile,:image)
	end
end
