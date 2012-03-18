class Production < ActiveRecord::Base
  belongs_to :product
  belongs_to :employee

  validates_numericality_of :quantity
  after_create :add_products
  after_destroy :deduct_products

  private

  def add_products
    product.update_attribute(:stock_qty, product.stock_qty + quantity)
    product.product_materials.each do |pm|
      pm.raw_material.update_attribute(:stock_qty, pm.raw_material.stock_qty - (quantity * pm.quantity))
    end
  end

  def deduct_products
    product.update_attribute(:stock_qty, product.stock_qty - quantity)
    product.product_materials.each do |pm|
      pm.raw_material.update_attribute(:stock_qty, pm.raw_material.stock_qty + (quantity * pm.quantity))
    end
  end
end
