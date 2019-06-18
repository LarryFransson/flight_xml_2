RSpec.describe FlightXml2 do
  it "has a version number" do
    expect(FlightXml2::VERSION).not_to be nil
  end

  it "has hashes containing request and return types" do
  	[FlightXml2::REQUEST_TYPES, FlightXml2::RESPONSE_TYPES].each do |h|
	  	expect(h).not_to be nil
	  	expect(h).to be_instance_of Hash
	  	expect(h).not_to be_empty
	  end
  end

  it "contains a hash with FlightXML methods as keys" do
  	rtArray = ["AirlineFlightSchedules", "AirlineFlightInfo"]
  	expect(FlightXml2::REQUEST_TYPES.keys).to match_array(rtArray)
  end

  it "contains expected values" do
  	FlightXml2::REQUEST_TYPES.each_value do |v|
  		expect(v.keys).to contain_exactly(:inputs, :return_type, :defaults)
  	end
  end

  it "uses the FXMLError class" do
  	expect {raise FlightXml2::FXMLError}.to raise_error(FlightXml2::FXMLError)
  	expect {raise FlightXml2::FXMLError, "message"}.to raise_error(FlightXml2::FXMLError, "message")
  end

end


