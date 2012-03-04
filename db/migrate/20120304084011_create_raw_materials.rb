class CreateRawMaterials < ActiveRecord::Migration
  def change
    create_table :raw_materials do |t|
      t.references :supplier
      t.integer :stock_qty
      t.integer :price
      t.string :name

      t.timestamps
    end
    add_index :raw_materials, :supplier_id
  end
end
