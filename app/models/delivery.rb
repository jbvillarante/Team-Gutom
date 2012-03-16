class Delivery < ActiveRecord::Base
  def name
    "#{id} - #{delivery_date.strftime("%b %d, %Y")}"
  end
end
