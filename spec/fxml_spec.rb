RSpec.describe FlightXml2::FXML do
	it "is a singleton instance of FXML" do
		expect(FlightXml2::FXML.instance).not_to be nil
		expect(described_class).to eq(FlightXml2::FXML)
	end

	it "has a defined default API URL" do
		expect(FlightXml2::FXML::DEFAULT_API_URL).to eq('http://flightxml.flightaware.com/json/FlightXML2/')
	end

	it "is initialized with the default API URL" do
		expect(FlightXml2::FXML::DEFAULT_API_URL).to eq(FlightXml2::FXML.instance.api_url)
	end

	it "accepts and returns values for @username, @api_key, and @api_url" do
		fxml = FlightXml2::FXML.instance
		fxml.username = "username"
		fxml.api_key = "api_key"
		fxml.api_url = "api_url"

		expect(fxml.username).to eq("username")
		expect(fxml.api_key).to eq("api_key")
		expect(fxml.api_url).to eq("api_url")
	end
end