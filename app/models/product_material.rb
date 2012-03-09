class ProductMaterial < ActiveRecord::Base
  belongs_to :raw_material
  belongs_to :product
end
