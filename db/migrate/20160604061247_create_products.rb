class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :location

      t.timestamps null: false
    end
    add_reference :products, :category, index: true
      add_reference :products, :store, index: true
  end
end
