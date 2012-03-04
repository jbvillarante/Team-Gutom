class CreatePurchaseTransactions < ActiveRecord::Migration
  def change
    create_table :purchase_transactions do |t|
      t.references :transaction
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
    add_index :purchase_transactions, :transaction_id
  end
end
