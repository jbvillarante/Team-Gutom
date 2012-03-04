class CreateProductMaterials < ActiveRecord::Migration
  def change
    create_table :product_materials do |t|
      t.references :rawmaterial
      t.references :product
      t.integer :quantity

      t.timestamps
    end
    add_index :product_materials, :rawmaterial_id
    add_index :product_materials, :product_id
  end
end
