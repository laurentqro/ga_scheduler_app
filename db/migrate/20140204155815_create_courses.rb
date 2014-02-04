class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.date :date
      t.integer :time_slot_id
      t.integer :classroom_id

      t.timestamps
    end
  end
end
