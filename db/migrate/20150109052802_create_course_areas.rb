class CreateCourseAreas < ActiveRecord::Migration
  def change
    create_table :course_areas do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
