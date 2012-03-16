class AddRawMaterialIdToPurchaseTransactions < ActiveRecord::Migration
  def change
    add_column :purchase_transactions, :raw_material_id, :integer
  end
end
