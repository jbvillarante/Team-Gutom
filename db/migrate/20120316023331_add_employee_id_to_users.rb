class AddEmployeeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :employee_id, :integer, :null => false
  end
end
