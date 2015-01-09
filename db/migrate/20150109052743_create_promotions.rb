class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :description
      t.references :course, index: true
      t.references :billing, index: true

      t.timestamps
    end
  end
end
