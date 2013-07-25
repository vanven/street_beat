class Concert < ActiveRecord::Base
  belongs_to :location
  has_many :time_slots
  has_many :performers, through: :time_slots
end
