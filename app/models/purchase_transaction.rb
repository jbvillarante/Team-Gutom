class PurchaseTransaction < ActiveRecord::Base
  belongs_to :employee
  has_many :purchase_materials

  def name
    "#{id} - #{created_at.strftime("%b %d, %Y")}" if created_at.present?
  end
end
