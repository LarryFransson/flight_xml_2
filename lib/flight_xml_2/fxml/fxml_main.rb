require "singleton"

module FlightXml2
	class FXML
		include Singleton

		attr_accessor :username, :api_key, :api_url

		DEFAULT_API_URL = 'http://flightxml.flightaware.com/json/FlightXML2/'

		def initialize
			@username = nil
			@api_key = nil
			@api_url = DEFAULT_API_URL
		end
	end

end