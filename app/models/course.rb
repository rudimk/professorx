class Course < ActiveRecord::Base
  belongs_to :user
  belongs_to :billing
  has_many :course_areas
  has_many :course_sections
end
