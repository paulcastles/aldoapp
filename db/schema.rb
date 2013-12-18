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

ActiveRecord::Schema.define(:version => 20131218125452) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "credit_card_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "credit_card_no_digest"
    t.string   "password_digest"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.float    "total_sales"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "dob"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "barcode"
    t.integer  "quantity_on_hand"
    t.string   "description"
    t.string   "colour"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sales", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "employee_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
  end

end
