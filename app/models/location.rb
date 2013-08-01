class Location < ActiveRecord::Base
	has_many :concerts


	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude


	before_save :reverse_geocode
	before_save :geocode, :if => :address_changed?


	def address_split
      address.split(",")
    end

end
