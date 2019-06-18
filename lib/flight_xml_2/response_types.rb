module FlightXml2

	RESPONSE_TYPES = {
		"ArrayOfAirlineFlightScheduleStruct" => {
			:metadata => {
				:object_type => Array,
				:name => "AirlineScheduleStruct"
			},
			:data => {
				:next_offset => Integer
			}
			
		},

		"AirlineScheduleStruct" => {
			:data => {
				:actual_ident => String,
				:aircrafttype => String,
				:arrivaltime => Integer,
				:departuretime => Integer,	
				:destination => String,
				:ident => String,
				:meal_service => String,
				:origin => String,
				:seats_cabin_business => Integer,
				:seats_cabin_coach => Integer,
				:seats_cabin_first => Integer
			}
		},
		
		"AirlineFlightInfoStruct" => {
			:data => {
				:bag_claim => String,
				:codeshares => Array,
				:fa_flight_id => String,
				:gate_dest => String,
				:gate_orig => String,
				:ident => String,
				:meal_service => String,
				:seats_cabin_business => Integer,
				:seats_cabin_coach => Integer,
				:seats_cabin_first => Integer,
				:tailnumber => String,
				:terminal_dest => String,
				:terminal_orig => String
			}
		}

	}

end