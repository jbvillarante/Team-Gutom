class RemoveTransactionTypeFromTransactionsTable < ActiveRecord::Migration
  def up
    remove_column :transactions, :transaction_type
  end

  def down
    add_column :transactions, :transaction_type, :string
  end
end
