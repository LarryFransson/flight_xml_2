module FlightXml2

	class FXMLRequest
		attr_accessor :type, :parameters
		def initialize(type, params={})
			@type = type

			if FlightXml2::REQUEST_TYPES.has_key? type
				@parameters = FlightXml2::REQUEST_TYPES[type][:defaults].merge! params
			else
				raise FlightXml2::FXMLError, "unsupported request type"
			end
			
		end

	end

end