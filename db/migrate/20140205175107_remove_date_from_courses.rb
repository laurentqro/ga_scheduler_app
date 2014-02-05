class RemoveDateFromCourses < ActiveRecord::Migration
  def up
    remove_column :courses, :date
  end

  def down
    add_column :courses, :date, :date
  end
end
