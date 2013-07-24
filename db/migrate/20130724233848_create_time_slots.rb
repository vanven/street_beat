class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.timestamp :starts_at
      t.integer :duration
      t.references :concert, index: true
      t.references :performer, index: true

      t.timestamps
    end
  end
end
