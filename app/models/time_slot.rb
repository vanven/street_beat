class TimeSlot < ActiveRecord::Base
  belongs_to :concert
  belongs_to :performer

  def occurs_at_to_s
  	starts_at = occurs_at.strftime("%A, %d %B %Y at %I:%M %P")
  end
end
