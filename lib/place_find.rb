class PlaceFind

	include HTTParty
	base_uri 'https://maps.googleapis.com/maps/api/place'

	def initialize(query)
		@options = { query: {key: 'AIzaSyAR1Q5HQsqNYXUW8ijdtCqxyc1xAfptGz4', 'input': query } }
	end

	# return results
	def results
		self.class.get('/autocomplete/json', @options)
	end
end