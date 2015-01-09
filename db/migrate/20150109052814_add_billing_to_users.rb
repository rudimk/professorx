class AddBillingToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :billing, index: true
  end
end
