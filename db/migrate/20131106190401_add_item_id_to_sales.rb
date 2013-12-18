class AddItemIdToSales < ActiveRecord::Migration
  def change
	add_column :sales, :item_id, :integer
  end
end
