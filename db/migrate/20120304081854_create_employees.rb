class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :lastname
      t.string :firstname
      t.string :role
      t.integer :salary
      t.integer :sss_no
      t.string :tin
      t.integer :philhealth
      t.string :address
      t.string :telephone_no
      t.string :email

      t.timestamps
    end
  end
end
