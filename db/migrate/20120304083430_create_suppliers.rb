class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :telephone_no
      t.string :email
      t.string :tin

      t.timestamps
    end
  end
end
