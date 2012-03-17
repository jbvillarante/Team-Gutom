class RefactorTransactionTables < ActiveRecord::Migration
  def up
    rename_table :purchase_transactions, :purchase_materials
    rename_table :sale_transactions, :sale_products
    rename_table :transactions, :sale_transactions
    rename_column :sale_products, :transaction_id, :sale_transaction_id
    rename_column :purchase_materials, :transaction_id, :purchase_transaction_id
    create_table :purchase_transactions do |t|
      t.references :employee
      t.float :quantity
      t.float :amount_paid
      t.timestamps
    end
  end

  def down
    drop_table :purchase_transactions
    rename_column :sale_products, :sale_transaction_id, :transaction_id
    rename_column :purchase_materials, :purchase_transaction_id, :transaction_id
    rename_table :purchase_materials, :purchase_transactions
    rename_table :sale_transactions, :transactions
    rename_table :sale_products, :sale_transactions
  end
end
