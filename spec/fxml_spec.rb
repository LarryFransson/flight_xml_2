RSpec.describe FlightXml2::FXML do
	it "is a singleton instance of FXML" do
		expect(FlightXml2::FXML.instance).not_to be nil
		expect(described_class).to eq(FlightXml2::FXML)
	end
end