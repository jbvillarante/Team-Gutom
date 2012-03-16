class Customer < ActiveRecord::Base
  has_many :transactions

  def name
    "#{lastname}, #{firstname}"
  end
end
