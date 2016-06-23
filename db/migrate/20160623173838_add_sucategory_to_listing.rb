class AddSucategoryToListing < ActiveRecord::Migration
  def change
    add_column :listings, :subcategory_id, :integer
  end
end
