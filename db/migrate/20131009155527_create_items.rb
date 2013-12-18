class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :barcode
      t.integer :quantity_on_hand
      t.string :type
      t.string :colour
      t.string :photo

      t.timestamps
    end
  end
end
