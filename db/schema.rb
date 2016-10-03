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

ActiveRecord::Schema.define(version: 20161003065339) do

  create_table "menus", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "path",       limit: 255
    t.boolean  "is_use"
    t.integer  "p_id",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "menu_type",  limit: 4
    t.string   "icon",       limit: 255
  end

  create_table "nh_sales", force: :cascade do |t|
    t.string   "from_code",           limit: 255
    t.string   "from_name",           limit: 255
    t.string   "sale_number",         limit: 255
    t.string   "confirm_date",        limit: 255
    t.decimal  "delivery_number",                 precision: 10
    t.string   "to_code",             limit: 255
    t.string   "to_name",             limit: 255
    t.string   "depart_code",         limit: 255
    t.string   "depart_name",         limit: 255
    t.string   "supply_type",         limit: 255
    t.integer  "order_no",            limit: 4
    t.string   "product_code",        limit: 255
    t.string   "product_name",        limit: 255
    t.string   "product_size",        limit: 255
    t.decimal  "product_tax",                     precision: 10
    t.decimal  "purchase_unit_price",             precision: 10
    t.integer  "purchase_amount",     limit: 4
    t.decimal  "supply_price",                    precision: 10
    t.decimal  "purchase_tax",                    precision: 10
    t.decimal  "purchase_price",                  precision: 10
    t.decimal  "commission",                      precision: 10
    t.decimal  "commission_tax",                  precision: 10
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "role_menus", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "role_id",    limit: 4
    t.boolean  "is_used"
    t.integer  "menu_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
