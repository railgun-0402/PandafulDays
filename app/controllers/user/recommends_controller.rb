class User::RecommendsController < ApplicationController

	def new
		@recommend_new = Recommend.new
	end

	def create
		@recommend_new = Recommend.new(recommend_params)
		@recommend_new.user_id = current_user.id
		@recommend_new.genre_id = params[:recommend][:genre_id]
		@recommend_new.station_id = params[:recommend][:station_id]
		@recommend_new.save
		redirect_to recommends_thank_path
	end

	def index
		@recommends = Recommend.all
	end

	def show
		@recommend = Recommend.find(params[:id])
	end

	def edit
		@recommend = Recommend.find(params[:id])
	end

	def destroy
        @recommend = Recommend.find(params[:id])
        @recommend.destroy
        redirect_to recommends_path
    end

	def thank
	end

	private
	def recommend_params
	    params.require(:recommend).permit(:recommend_shop_name,:recommend_shop_profile,:recommend_shop_address,:recommend_shop_homepage,:recommend_image,:genre_id,:station_id)
	end
end
