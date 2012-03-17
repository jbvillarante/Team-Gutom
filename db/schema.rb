# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120317102212) do

  create_table "customers", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "address"
    t.string   "telephone_no"
    t.string   "mobile_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliveries", :force => true do |t|
    t.float    "total_price"
    t.integer  "head_count"
    t.datetime "delivery_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "role"
    t.integer  "salary"
    t.integer  "sss_no"
    t.string   "tin"
    t.integer  "philhealth"
    t.string   "address"
    t.string   "telephone_no"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_materials", :force => true do |t|
    t.integer  "raw_material_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_materials", ["product_id"], :name => "index_product_materials_on_product_id"
  add_index "product_materials", ["raw_material_id"], :name => "index_product_materials_on_raw_material_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "stock_qty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "purchase_transactions", :force => true do |t|
    t.integer  "transaction_id"
    t.integer  "quantity"
    t.integer  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "raw_material_id"
  end

  add_index "purchase_transactions", ["transaction_id"], :name => "index_purchase_transactions_on_transaction_id"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "raw_materials", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "stock_qty"
    t.integer  "price"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "raw_materials", ["supplier_id"], :name => "index_raw_materials_on_supplier_id"

  create_table "sale_transactions", :force => true do |t|
    t.integer  "product_id"
    t.integer  "transaction_id"
    t.integer  "quantity"
    t.integer  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sale_transactions", ["product_id"], :name => "index_sale_transactions_on_product_id"
  add_index "sale_transactions", ["transaction_id"], :name => "index_sale_transactions_on_transaction_id"

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone_no"
    t.string   "email"
    t.string   "tin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "amount_paid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "delivery_id"
  end

  add_index "transactions", ["employee_id"], :name => "index_transactions_on_employee_id"

  create_table "users", :force => true do |t|
    t.string   "email",               :default => "", :null => false
    t.string   "encrypted_password",  :default => "", :null => false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id",                         :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
