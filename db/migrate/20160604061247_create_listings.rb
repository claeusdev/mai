class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :location

      t.timestamps null: false
    end
    add_reference :listings, :category, index: true
  end
end
