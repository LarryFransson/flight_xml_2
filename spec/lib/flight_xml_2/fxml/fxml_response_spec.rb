RSpec.describe FlightXml2::FXMLResponse do
	it "returns an instance of FXMLResponse" do
		expect(described_class).to eq(FlightXml2::FXMLResponse)
	end

	it "responds to a request for @type" do
		fxml = FlightXml2::FXMLResponse.new("AirlineScheduleStruct")
		expect(fxml).to respond_to(:type)
	end
end