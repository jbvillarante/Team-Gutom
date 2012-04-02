class RefactorColumnsThatShouldBeFloat < ActiveRecord::Migration
  def up
    change_column :raw_materials, :stock_qty, :float
    change_column :raw_materials, :price, :float
    change_column :products, :price, :float
    change_column :products, :stock_qty, :float
    change_column :product_materials, :quantity, :float
    change_column :purchase_materials, :quantity, :float
    change_column :purchase_materials, :total_price, :float
    change_column :sale_products, :quantity, :float
    change_column :sale_products, :total_price, :float
    change_column :sale_transactions, :amount_paid, :float
  end

  def down
    change_column :raw_materials, :stock_qty, :integer
    change_column :raw_materials, :price, :integer
    change_column :products, :price, :integer
    change_column :products, :stock_qty, :integer
    change_column :product_materials, :quantity, :integer
    change_column :purchase_materials, :quantity, :integer
    change_column :purchase_materials, :total_price, :integer
    change_column :sale_products, :quantity, :integer
    change_column :sale_products, :total_price, :integer
    change_column :sale_transactions, :amount_paid, :integer
  end
end
