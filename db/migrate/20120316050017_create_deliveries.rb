class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.float :total_price
      t.integer :head_count
      t.datetime :delivery_date
      t.timestamps
    end
  end
end
