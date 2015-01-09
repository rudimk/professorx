class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :billed_amount

      t.timestamps
    end
  end
end
