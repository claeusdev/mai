class AddStoreIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :store_id, :integer
  end
end
