class SaleTransaction < ActiveRecord::Base
  belongs_to :product
  belongs_to :transaction

  def name
    "#{quantity} #{product.try(:name)} @#{total_price}"
  end
end
