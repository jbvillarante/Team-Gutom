class Employee < ActiveRecord::Base
  has_many :transactions
end
