class AddAddressToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :address, :string

  end
end
