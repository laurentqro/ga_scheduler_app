class Course < ActiveRecord::Base
  attr_accessible :date, :description, :name, :time_slot_id
  belongs_to :time_slot
end
