class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_conf
      t.string :credit_card_no

      t.timestamps
    end
  end
end
