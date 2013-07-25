class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string     :name
      t.timestamp  :occurs_at
      t.integer    :cover_charge
      t.integer    :duration
      t.references :location, index: true

      t.timestamps
    end
  end
end
