class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  belongs_to :employee
  validates_uniqueness_of :email

  attr_accessible :email, :password, :password_confirmation, :remember_me, :employee_id
end
