class Populator
  def self.add_customers(n=1)
    (1..n).each do |k|
      Customer.create!(:lastname => Forgery::Name.last_name, :firstname => Forgery::Name.first_name,
                       :address => "#{Forgery(:address).street_address}, #{Forgery(:address).city} #{Forgery(:address).province}, #{Forgery(:address).country} #{Forgery(:address).zip}",
                       :telephone_no => Forgery(:address).phone, :mobile_no => Forgery(:address).phone
                      )
    end
  end

  def self.add_employees(n=1)
    (1..n).each do |k|
      Employee.create!(:lastname => Forgery::Name.last_name, :firstname => Forgery::Name.first_name,
                       :role => Employee::Roles[rand(5)], :salary => Forgery(:monetary).money(:min => 9000,:max => 30000),
                       :sss_no => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640),
                       :tin => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640),
                       :philhealth => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640),
                       :address => "#{Forgery(:address).street_address}, #{Forgery(:address).city} #{Forgery(:address).province}, #{Forgery(:address).country} #{Forgery(:address).zip}",
                       :telephone_no => Forgery(:address).phone, :email => Forgery(:internet).email_address
                       )
    end
  end

  def self.add_suppliers(n=1)
    (1..n).each do |k|
      Supplier.create!(:name => Forgery::Name.full_name,
                       :address => "#{Forgery(:address).street_address}, #{Forgery(:address).city} #{Forgery(:address).province}, #{Forgery(:address).country} #{Forgery(:address).zip}",
                       :telephone_no => Forgery(:address).phone, :email => Forgery(:internet).email_address,
                       :tin => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640))
    end
  end

  def self.add_all(n=1)
    self.add_customers(n)
    self.add_employees(n)
    self.add_suppliers(n)
  end
end
