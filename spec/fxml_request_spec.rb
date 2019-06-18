RSpec.describe FlightXml2::FXMLRequest do
	it "returns an instance of FXMLRequest" do
		expect(described_class).to eq(FlightXml2::FXMLRequest)
	end

	it "raises an error if an unrecognized type is passed" do
		expect {FlightXml2::FXMLRequest.new("TestType")}.to raise_error(FlightXml2::FXMLError, "unsupported request type")
	end

	it "sets default parameters and passed parameters" do
		request = FlightXml2::FXMLRequest.new("AirlineFlightSchedules", {:key1 => "value1", :key2 => "value2"})
		expect(request.parameters[:howMany]).to eq(FlightXml2::REQUEST_TYPES["AirlineFlightSchedules"][:defaults][:howMany])
		expect(request.parameters[:key1]).to eq("value1")
		expect(request.parameters[:key2]).to eq("value2")
	end
end