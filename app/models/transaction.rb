class Transaction < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
  belongs_to :delivery

  has_many :purchase_transactions
  has_many :sale_transactions

  def name
    "#{id} - #{created_at.strftime("%b %d, %Y")}" if created_at.present?
  end
end
