class AddCreditCardNoDigestToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :credit_card_no_digest, :string

  end
end
