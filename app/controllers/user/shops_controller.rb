class User::ShopsController < ApplicationController

	def search
		@stations = Station.all
	end

	def index
		@shops = Shop.all
	    @shops = @shops.where("shop_name like ?", "%#{params[:name]}%") if params[:name].present?
		@shops = @shops.where(genre_id: params[:genre_id]) if params[:genre_id].present?
		@shops = @shops.where(station_id: params[:station_id]) if params[:station_id].present?
        @shop_count = @shops.count
        order_hash = {
        	'shop_comment_count': 'count(shop_comments.shop_id) desc',
        	'favorites_count': 'count(favorites.shop_id) desc',
        	'shop_name': 'shop_name asc',
        	'average_score': 'average_score desc'
        }

		if params[:sort_type] == 'shop_comment_count'
		    @shops = @shops.left_joins(:shop_comments)
		    .group('shops.id')
		elsif params[:sort_type] == 'favorites_count'
	        @shops = @shops.left_joins(:favorites)
	        .group('favorites.shop_id')
	    end
	    @shops = @shops.order(order_hash[params[:sort_type].to_sym]) if params[:sort_type].present?
        @shops = @shops.page(params[:page])
	end

	def show
		@shop = Shop.find(params[:id])
		@shop_comment = ShopComment.new
	end
end
