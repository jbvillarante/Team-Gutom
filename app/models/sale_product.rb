class SaleProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :sale_transaction

  def name
    "#{quantity} #{product.try(:name)} @#{total_price}"
  end
end
