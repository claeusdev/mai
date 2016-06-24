class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about, :text
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
