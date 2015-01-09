class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :author
      t.references :user, index: true
      t.integer :cost
      t.references :billing, index: true

      t.timestamps
    end
  end
end
