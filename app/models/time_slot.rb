class TimeSlot < ActiveRecord::Base
  attr_accessible :day, :evening
  has_many :courses
end
