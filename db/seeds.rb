
['employees', 'users', 'suppliers', 'products', 'raw_materials', 'deliveries',
 'product_materials', 'productions', 'purchase_materials',
 'purchase_transactions', 'sale_transactions', 'sale_products', 'customers'].each do |table|
#  ActiveRecord::Base.connection.execute("DELETE FROM #{table};")
#  ActiveRecord::Base.connection.execute("ALTER TABLE #{table} AUTO_INCREMENT = 1;")
end


Employee.create!(:lastname => Forgery::Name.last_name, :firstname => Forgery::Name.first_name,
                 :role => 'admin', :salary => Forgery(:monetary).money(:min => 9000,:max => 30000),
                 :sss_no => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640),
                 :tin => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640),
                 :philhealth => Forgery(:basic).number(:at_least => 1000000000, :at_most => 2147483640),
                 :address => "#{Forgery(:address).street_address}, #{Forgery(:address).city} #{Forgery(:address).province}, #{Forgery(:address).country} #{Forgery(:address).zip}",
                 :telephone_no => Forgery(:address).phone, :email => 'admin@admin.com'
                )

Populator.add_all(50)
products = CSV.open("#{Dir.pwd}/public/products.csv")
raw_materials = CSV.open("#{Dir.pwd}/public/raw_materials.csv")
product_materials = CSV.open("#{Dir.pwd}/public/product_materials.csv")

raw_materials.each do |raw_material|
  RawMaterial.create!(:supplier_id => Forgery(:basic).number(:at_least => 1, :at_most => 50),
                      :stock_qty => raw_material[1],
                      :price => raw_material[3],
                      :name => raw_material[4],
                      :unit => raw_material[2])
end

products.each do |product|
  Product.create!(:name => product[1],
                  :price => product[2],
                  :stock_qty => Forgery(:basic).number(:at_least => 15, :at_most => 100),
                  :image => open("#{Dir.pwd}/public/menu_photos/#{product[0]}.jpg"))

end

product_materials.each do |pm|
  ProductMaterial.create!(:product_id => pm[3].to_i, :raw_material_id => pm[2].to_i, :quantity => pm[1])
end
