class Employee < ActiveRecord::Base
  Roles = ["admin", "driver", "waiter", "manager", "cashier"]

  has_many :transactions

  after_create :create_user_if_admin

  private

  def create_user_if_admin
    User.create!(:email => email, :password => 'password') if role == 'admin'
  end
end
