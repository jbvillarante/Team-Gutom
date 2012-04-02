class AddUnitsToRawMaterials < ActiveRecord::Migration
  def change
    add_column :raw_materials, :unit, :string
  end
end
