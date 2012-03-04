class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :lastname
      t.string :firstname
      t.string :address
      t.string :telephone_no
      t.string :mobile_no

      t.timestamps
    end
  end
end
