['employees', 'users', 'suppliers', 'products', 'raw_materials', 'deliveries',
 'product_materials', 'productions', 'purchase_materials',
 'purchase_transactions', 'sale_transactions', 'sale_products', 'customers'].each do |table|
#  ActiveRecord::Base.connection.execute("DELETE FROM #{table};")
#  ActiveRecord::Base.connection.execute("ALTER TABLE #{table} AUTO_INCREMENT = 1;")
end


Employee.create!(:lastname => Forgery::Name.last_name, :firstname => Forgery::Name.first_name,
                 :role => 'admin', :salary => Forgery(:monetary).money(:min => 9000,:max => 30000),
                 :sss_no => Forgery(:basic).number(:at_least => 10000000000, :at_most => 1000000000000000),
                 :tin => Forgery(:basic).number(:at_least => 10000000000, :at_most => 1000000000000000),
                 :philhealth => Forgery(:basic).number(:at_least => 10000000000, :at_most => 1000000000000000),
                 :address => "#{Forgery(:address).street_address}, #{Forgery(:address).city} #{Forgery(:address).province}, #{Forgery(:address).country} #{Forgery(:address).zip}",
                 :telephone_no => Forgery(:address).phone, :email => 'admin@admin.com'
                )

Populator.add_all(50)
products = CSV.open("#{Dir.pwd}/public/products.csv")
raw_materials = CSV.open("#{Dir.pwd}/public/raw_materials.csv")
raw_materials.each do |raw_material|
  RawMaterial.create!(:supplier_id => Forgery(:basic).number(:at_least => 1, :at_most => 50),
                      :stock_qty => Forgery(:basic).number(:at_least => 15, :at_most => 100),
                      :price => Forgery(:basic).number(:at_least => 1, :at_most => 50),
                      :name => raw_material[0])
                      
end

products.each do |product|
  p = Product.create!(:name => product[0],
                      :price => Forgery(:basic).number(:at_least => 100, :at_most => 2000),
                      :stock_qty => Forgery(:basic).number(:at_least => 15, :at_most => 100),
                      :image => open("#{Dir.pwd}/public/menu_photos/#{product[1]}.jpg"))

  raw_materials = product[4].split(',')

  raw_materials.each do |rm|
    if rm.to_i > 0 and rm.to_i < 50
      ProductMaterial.create!(:product => p, :raw_material => RawMaterial.find(rm.to_i),
                            :quantity => Forgery(:basic).number(:at_least => 1, :at_most => 10))
    end
  end
end
