class Course < ActiveRecord::Base
  attr_accessible :date, :description, :name, :time_slot_id, :start_date, :end_date, :classroom_id, :user_ids
  belongs_to :time_slot
  belongs_to :classroom
  has_many :enrollments
  has_many :users, through: :enrollments

  def only_one_day?
    self.start_date == self.end_date
  end

end
