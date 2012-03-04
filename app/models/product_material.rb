class ProductMaterial < ActiveRecord::Base
  belongs_to :rawmaterial
  belongs_to :product
end
