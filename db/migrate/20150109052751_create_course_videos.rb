class CreateCourseVideos < ActiveRecord::Migration
  def change
    create_table :course_videos do |t|
      t.string :video_path
      t.references :course_sections, index: true

      t.timestamps
    end
  end
end
