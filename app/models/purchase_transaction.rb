class PurchaseTransaction < ActiveRecord::Base
  belongs_to :employee
  has_many :purchase_materials

  after_create :add_material_stocks
  after_destroy :deduct_material_stocks

  validates_numericality_of :amount_paid

  def name
    "#{id} - #{created_at.strftime("%b %d, %Y")}" if created_at.present?
  end

  private

  def add_material_stocks
    purchase_materials.each do |pm|
      pm.raw_material.update_attribute(:stock_qty, pm.raw_material.stock_qty + pm.quantity)
      pm.raw_material.update_attribute(:price, pm.total_price / pm.quantity)
    end
  end

  def deduct_material_stocks
    purchase_materials.each do |pm|
      pm.raw_material.update_attribute(:stock_qty, pm.raw_material.stock_qty - pm.quantity)
      pm.destroy
    end
  end
end
