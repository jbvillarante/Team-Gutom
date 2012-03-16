class PurchaseTransaction < ActiveRecord::Base
  belongs_to :transaction
  belongs_to :raw_material

  def name
    "#{quantity} #{raw_material.try(:name)} @#{total_price}"
  end
end
