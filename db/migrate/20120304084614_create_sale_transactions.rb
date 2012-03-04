class CreateSaleTransactions < ActiveRecord::Migration
  def change
    create_table :sale_transactions do |t|
      t.references :product
      t.references :transaction
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
    add_index :sale_transactions, :product_id
    add_index :sale_transactions, :transaction_id
  end
end
