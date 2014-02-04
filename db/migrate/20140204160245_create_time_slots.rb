class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.boolean :day
      t.boolean :evening

      t.timestamps
    end
  end
end
