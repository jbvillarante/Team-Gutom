Employee.find_by_email('admin@admin.com').try(:destroy)
User.find_by_email('admin@admin.com').try(:destroy)

Employee.create!(:lastname => Forgery::Name.last_name, :firstname => Forgery::Name.first_name,
                 :role => 'admin', :salary => Forgery(:monetary).money(:min => 9000,:max => 30000),
                 :sss_no => Forgery(:basic).number(:at_least => 10000000000, :at_most => 1000000000000000),
                 :tin => Forgery(:basic).number(:at_least => 10000000000, :at_most => 1000000000000000),
                 :philhealth => Forgery(:basic).number(:at_least => 10000000000, :at_most => 1000000000000000),
                 :address => "#{Forgery(:address).street_address}, #{Forgery(:address).city} #{Forgery(:address).province}, #{Forgery(:address).country} #{Forgery(:address).zip}",
                 :telephone_no => Forgery(:address).phone, :email => 'admin@admin.com'
                )
