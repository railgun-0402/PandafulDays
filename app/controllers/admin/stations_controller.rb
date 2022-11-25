class Admin::StationsController < ApplicationController

	def index
		@stations = Station.all
		@station_new = Station.new
	end

	def create
		@station_new = Station.new(station_params)
		@station_new.save
		redirect_to admin_stations_path
	end

	def edit
		@station = Station.find(params[:id])
	end

	def update
		@station = Station.find(params[:id])
		if @station.update(station_params)
		   redirect_to admin_stations_path
		end
	end

    private
    def station_params
  	    params.require(:station).permit(:station_name,:station_status)
  	end
end
