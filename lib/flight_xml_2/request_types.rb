module FlightXml2

	# Dates must be in the format of a Timestamp in UTC
	REQUEST_TYPES = {
		"AirlineFlightSchedules" => {
			:inputs => {
				:required => {
					:startDate => Integer,
					:endDate => Integer,
					:origin => String,
					:destination => String,
					:howMany => Integer,
					:offset => Integer
				},
				:optional => {
					:airline => String,
					:flightno => String
				}
			},
			:defaults => {
				:howMany => 15,
				:offset => 0
			},
			:return_type => "ArrayOfAirlineFlightScheduleStruct"
		},

		"AirlineFlightInfo" => {
			:inputs => {
				:required => {
					:faFlightID => String
				},
				:optional => {}
			},
			:return_type => "AirlineFlightInfoStruct",
			:defaults => {}
		}
	}

end