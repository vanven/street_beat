class Performer < ActiveRecord::Base
	has_many :time_slots
	has_many :concerts, through: :time_slots
end
