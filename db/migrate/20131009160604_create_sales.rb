class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :customer_id      
      t.integer :employee_id
      t.date :date

      t.timestamps
    end
  end
end
