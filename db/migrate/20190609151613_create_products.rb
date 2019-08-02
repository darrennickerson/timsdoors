class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price_cost, :precision => 10, :scale => 2
      t.decimal :price_markup, :precision => 10, :scale => 2
      t.text :description
      t.integer :units
      t.boolean :restock
  

      t.timestamps
    end
  end
end
