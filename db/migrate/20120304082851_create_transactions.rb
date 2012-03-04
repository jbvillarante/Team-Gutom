class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :employee
      t.string :transaction_type
      t.integer :amount_paid

      t.timestamps
    end
    add_index :transactions, :employee_id
  end
end
