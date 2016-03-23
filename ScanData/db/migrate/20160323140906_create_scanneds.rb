class CreateScanneds < ActiveRecord::Migration
  def change
    create_table :scanneds do |t|
      t.text :item_found, null: false
      t.text :item_name, null: true
      t.string :barcode, null: false 
      t.timestamps null: false
    end
  end
end
