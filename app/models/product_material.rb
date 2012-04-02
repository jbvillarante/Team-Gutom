class ProductMaterial < ActiveRecord::Base
  belongs_to :raw_material
  belongs_to :product

  validates_numericality_of :quantity

  def name
    "#{quantity} #{raw_material.unit} #{raw_material.name}"
  end
end
