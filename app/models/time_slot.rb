class TimeSlot < ActiveRecord::Base
  belongs_to :concert
  belongs_to :performer
end
