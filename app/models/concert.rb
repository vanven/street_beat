class Concert < ActiveRecord::Base
  belongs_to :location
  has_many :time_slots
  has_many :performers, through: :time_slots
  
  accepts_nested_attributes_for :time_slots, :reject_if => :all_blank, :allow_destroy => true

  def duration_to_s
  	hours = duration/60
  	mins = duration%60
  	if mins == 0
  		"#{hours} hours"
  	else
  		"#{hours} hours and #{mins} minutes"
  	end
  end

  def cover_to_money
  	cover = cover_charge*0.01 
  	cover = "%.2f" % (cover)
  	cover = "$#{cover}"
  end
end
