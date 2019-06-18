module FlightXml2
	class FXMLResponse
		attr_accessor :type
		attr_reader :attributes

		def initialize(type)
			@type = type

			if FlightXml2::RESPONSE_TYPES.has_key? type
				@attributes = FlightXml2::RESPONSE_TYPES[type][:data].keys
			else
				raise FlightXml2::FXMLError, "unsupported response type"
			end
			
		end
	end
end