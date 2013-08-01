class Location < ActiveRecord::Base
	has_many :concerts

	def address_split
      address.split(",")
    end
	
	#geocoded_by :address
	#reverse_geocoded_by :latitude, :longitude
	#:geocode, :reverse_geocode
end
