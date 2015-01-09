class AddAffliationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :affliation, :string
  end
end
