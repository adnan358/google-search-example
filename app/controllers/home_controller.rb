class HomeController < ApplicationController
	def index
	end

	def place_search
		@results = PlaceFind.new(params['q']).results
		render :json => @results['predictions']
	end

	def place_detail
		place_id = params['place_id']
		@place = PlaceDetail.new(place_id).results
	end
end
