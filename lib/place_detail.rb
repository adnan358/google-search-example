class PlaceDetail
	
	include HTTParty
	base_uri 'https://maps.googleapis.com/maps/api/place'

	def initialize(place_id)
		@options = { query: {key: 'AIzaSyAR1Q5HQsqNYXUW8ijdtCqxyc1xAfptGz4', 'placeid': place_id } }
	end

	# return results
	def results
		self.class.get('/details/json', @options)
	end
end