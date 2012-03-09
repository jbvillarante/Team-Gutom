class CreateProductMaterials < ActiveRecord::Migration
  def change
    create_table :product_materials do |t|
      t.references :raw_material
      t.references :product
      t.integer :quantity

      t.timestamps
    end
    add_index :product_materials, :raw_material_id
    add_index :product_materials, :product_id
  end
end
