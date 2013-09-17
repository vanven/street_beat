class Location < ActiveRecord::Base
	before_save :make_address
	has_many :concerts

	attr_accessor :street_line1, :street_line2, :city, :state, :zip_code  

	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude


	before_save :reverse_geocode
	before_save :geocode, :if => :address_changed?


	def address_split
      address.split(",")
    end

    private 

    def make_address 
    	
    end

end
