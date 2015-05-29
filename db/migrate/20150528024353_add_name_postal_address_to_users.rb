class AddNamePostalAddressToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :postadd_1, :string
    add_column :users, :postadd_2, :string
    add_column :users, :postadd_3, :string
  end
end
