class Fest 
	extend ActiveModel::Naming
	include ActiveModel::Model
	include ActiveModel::Conversion
	include ActiveModel::Validations

	attr_accessor :name, :location_id, :cover_charge, :performer_id, :occurs_at, :duration

	def persisted?
		false
	end

	def save
		@concert = Concert.create!(name: name, location_id: location_id, cover_charge: cover_charge)

		1.times do 
			@concert.time_slots.create!(performer_id: performer_id, occurs_at: occurs_at, duration: duration)			
		end
	end


end
