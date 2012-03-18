class SaleProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :sale_transaction

  validates_numericality_of :quantity, :total_price

  def name
    "#{quantity} #{product.try(:name)} @#{total_price}"
  end
end
