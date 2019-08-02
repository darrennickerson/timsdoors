class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.decimal :charge
      t.text :charge_description
      t.decimal :total
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
