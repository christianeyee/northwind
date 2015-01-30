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

ActiveRecord::Schema.define(version: 20150130100643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", id: false, force: true do |t|
    t.integer "order_id",      null: false
    t.string  "customer_id"
    t.integer "employee_id"
    t.date    "order_date"
    t.date    "required_date"
    t.date    "shipped_date"
    t.integer "ship_via"
    t.float   "freight"
    t.string  "ship_name"
    t.string  "ship_address"
    t.string  "ship_city"
    t.string  "ship_region"
    t.string  "postal_code"
    t.string  "ship_country"
  end

  add_index "orders", ["order_id"], name: "index_orders_on_order_id", unique: true, using: :btree

end
