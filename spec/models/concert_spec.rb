require 'spec_helper'

describe Concert do
  describe "#duration_to_s" do
  	
  	context "duration is 240" do
	  	specify "returns 4 hours as a string" do
	  		concert = Concert.new(duration: 240)
	  		expect(concert.duration_to_s).to eql('4 hours')
	  	end
		end

		context "duration is 244" do
	  	specify "returns 4 hours and 4 minutes as a string" do
	  		concert = Concert.new(duration: 244)
	  		expect(concert.duration_to_s).to eql('4 hours and 4 minutes')
	  	end
	  end
	end

	describe "#cover_to_money" do
		context "cover charge is 5000" do
			specify "returns $50.00" do
				concert = Concert.new(cover_charge: 5000)
				expect(concert.cover_to_money).to eql('$50.00')
			end
		end

		context "cover charge is 55599" do
			specify "returns $55.99" do
				concert = Concert.new(cover_charge: 5599)
				expect(concert.cover_to_money).to eql('$55.99')
			end
		end
	end

end
