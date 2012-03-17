class PurchaseMaterial < ActiveRecord::Base
  belongs_to :purchase_transaction
  belongs_to :raw_material

  def name
    "#{quantity} #{raw_material.try(:name)} @#{total_price}"
  end
end
