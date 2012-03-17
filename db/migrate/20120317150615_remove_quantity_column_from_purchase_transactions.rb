class RemoveQuantityColumnFromPurchaseTransactions < ActiveRecord::Migration
  def up
    remove_column :purchase_transactions, :quantity
  end

  def down
    add_column :purchase_transactions, :quantity, :integer
  end
end
