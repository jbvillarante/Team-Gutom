class ProductMaterial < ActiveRecord::Base
  belongs_to :raw_material
  belongs_to :product

  def name
    "#{quantity} #{raw_material.name}"
  end
end
