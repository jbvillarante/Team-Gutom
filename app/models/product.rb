class Product < ActiveRecord::Base
  has_many :product_materials
  has_many :raw_materials, :through => :product_materials

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
