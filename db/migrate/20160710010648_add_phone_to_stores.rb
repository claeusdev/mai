class AddPhoneToStores < ActiveRecord::Migration
  def change
    add_column :stores, :phone_number, :string
  end
end
