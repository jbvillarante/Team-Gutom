class Customer < ActiveRecord::Base
  has_many :sale_transactions

  def name
    "#{lastname}, #{firstname}"
  end
end
