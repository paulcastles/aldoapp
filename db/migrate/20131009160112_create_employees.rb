class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.float :total_sales
      t.string :photo

      t.timestamps
    end
  end
end
