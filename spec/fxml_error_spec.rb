RSpec.describe FlightXml2::FXMLError do
	it "returns an instance of FXMLError" do
		expect(FlightXml2::FXMLError.new).not_to be nil
		expect(described_class). to eq(FlightXml2::FXMLError)
	end

	it "returns an error message" do
		err = FlightXml2::FXMLError.new("Test error message")
		expect(err.message).to eq("Test error message")
	end
end