class Delivery < ActiveRecord::Base
  has_one :sale_transaction
  
  def name
    "#{id} - #{delivery_date.strftime("%b %d, %Y")}"
  end
end
