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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160129075913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_contacts", force: :cascade do |t|
    t.integer  "customer_id",    null: false
    t.string   "contact_method"
    t.datetime "date_contacted"
    t.text     "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "customer_contacts", ["customer_id"], name: "index_customer_contacts_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name",                        null: false
    t.decimal  "credit_limit",  default: 0.0, null: false
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "suburb"
    t.string   "state"
    t.integer  "post_code"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "name",          null: false
    t.integer  "abn"
    t.string   "email"
    t.integer  "phone"
    t.string   "website"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "suburb"
    t.string   "state"
    t.integer  "post_code"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id",                 null: false
    t.integer  "distributor_id",              null: false
    t.string   "item"
    t.string   "item_url"
    t.integer  "quantity"
    t.decimal  "price"
    t.decimal  "deposit"
    t.boolean  "paid"
    t.string   "status"
    t.string   "availability"
    t.datetime "customer_order_on"
    t.datetime "ordered_from_distributor_on"
    t.datetime "arrived_in_store_on"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["distributor_id"], name: "index_orders_on_distributor_id", using: :btree

end
