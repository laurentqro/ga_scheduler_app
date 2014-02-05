class Course < ActiveRecord::Base
  attr_accessible :date, :description, :name, :time_slot_id, :classroom_id, :user_ids
  belongs_to :time_slot
  belongs_to :classroom
  has_many :enrollments
  has_many :users, through: :enrollments

end
