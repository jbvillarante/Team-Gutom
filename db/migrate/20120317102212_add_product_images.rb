class AddProductImages < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.has_attached_file :image
    end
  end

  def down
    drop_attached_file :products, :image
  end
end
