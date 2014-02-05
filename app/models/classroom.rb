class Classroom < ActiveRecord::Base
  attr_accessible :capacity, :location, :name, :course_ids
  has_many :courses
end
