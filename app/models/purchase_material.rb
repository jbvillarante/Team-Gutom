class PurchaseMaterial < ActiveRecord::Base
  belongs_to :purchase_transaction
  belongs_to :raw_material

  validates_numericality_of :quantity, :total_price

  def name
    "#{quantity} #{raw_material.try(:name)} @#{total_price}"
  end
end
