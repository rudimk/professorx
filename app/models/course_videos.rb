class CourseVideos < ActiveRecord::Base
  belongs_to :course_sections
end
