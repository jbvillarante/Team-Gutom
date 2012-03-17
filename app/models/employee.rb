class Employee < ActiveRecord::Base
  Roles = ["admin", "driver", "waiter", "manager", "cashier"]

  has_many :sale_transactions
  has_many :purchase_transactions
  has_one :user
  validates_uniqueness_of :email

  after_create :create_user_if_admin

  def name
    "#{lastname}, #{firstname}"
  end

  private

  def create_user_if_admin
    #temporary password = 'password'
    User.create!(:email => email, :password => 'password', :admin => true, :employee_id => self.id) if role == 'admin'
  end
end
