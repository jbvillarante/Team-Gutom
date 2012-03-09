class AddCustomerIdToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :customer_id, :integer
  end
end
