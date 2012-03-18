class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.belongs_to :employee
      t.belongs_to :product
      t.float :quantity
      t.timestamps
    end
  end
end
