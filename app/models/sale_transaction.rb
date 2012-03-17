class SaleTransaction < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
  belongs_to :delivery

  has_many :sale_products

  after_create :deduct_product_stocks
  after_destroy :add_product_stocks

  def name
    "#{id} - #{created_at.strftime("%b %d, %Y")}" if created_at.present?
  end

  private
  
  def deduct_product_stocks
    sale_products.each do |sp|
      sp.product.update_attribute(:stock_qty, sp.product.stock_qty - sp.quantity)
    end
  end

  def add_product_stocks
    sale_products.each do |sp|
      sp.product.update_attribute(:stock_qty, sp.product.stock_qty + sp.quantity)
      sp.destroy
      delivery.try(:destroy)
    end
  end
end
