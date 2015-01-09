class CourseSections < ActiveRecord::Base
  belongs_to :course
  has_many :course_videos
end
