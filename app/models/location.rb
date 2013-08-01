class Location < ActiveRecord::Base
	has_many :concerts


	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
	after_validation :geocode, :reverse_geocode, :if => :address_changed?


	def address_split
      address.split(",")
    end

end
