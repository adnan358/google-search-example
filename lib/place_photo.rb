class PlacePhoto
	
	include HTTParty
	base_uri 'https://maps.googleapis.com/maps/api/place/photo'

	def initialize(reference_id)
		@options = { follow_redirects: true, query: {key: 'AIzaSyAR1Q5HQsqNYXUW8ijdtCqxyc1xAfptGz4', 'photoreference': reference_id, maxwidth: 720 } }
	end

	def image
		self.class.get('', @options, )
	end
end