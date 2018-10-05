module FlightXml2

	class FXMLError
		attr_accessor :error
		def initialize(error = nil)
			@error = error			
		end
	end

end