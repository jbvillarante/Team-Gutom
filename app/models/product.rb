class Product < ActiveRecord::Base
  has_many :product_materials
  has_many :raw_materials, :through => :product_materials
end
