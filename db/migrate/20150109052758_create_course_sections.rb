class CreateCourseSections < ActiveRecord::Migration
  def change
    create_table :course_sections do |t|
      t.string :title
      t.text :description
      t.references :course, index: true

      t.timestamps
    end
  end
end
