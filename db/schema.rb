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

ActiveRecord::Schema.define(version: 20161016035209) do

  create_table "agencies", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "agency_type", limit: 255
    t.boolean  "is_used"
    t.string   "area",        limit: 255
    t.string   "edi_code",    limit: 255
    t.string   "email",       limit: 255
    t.string   "phone",       limit: 255
    t.string   "owner_name",  limit: 255
    t.string   "biz_number",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.boolean  "is_used"
    t.string   "cat_type",    limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id", using: :btree

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
    t.date     "confirm_date"
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
    t.integer  "category_id",         limit: 4
  end

  create_table "product_prices", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.string   "price_type", limit: 255
    t.float    "price",      limit: 24
    t.boolean  "is_used"
    t.string   "target",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "product_prices", ["product_id"], name: "index_product_prices_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "code",         limit: 255
    t.integer  "category_id",  limit: 4
    t.string   "product_type", limit: 255
    t.string   "size",         limit: 255
    t.integer  "box_count",    limit: 4,     default: 1
    t.integer  "ta_count",     limit: 4,     default: 1
    t.string   "img_url",      limit: 255
    t.text     "description",  limit: 65535
    t.float    "purchase",     limit: 24,    default: 0.0
    t.float    "purchase_tax", limit: 24,    default: 0.0
    t.float    "supply",       limit: 24,    default: 0.0
    t.float    "supply_tax",   limit: 24,    default: 0.0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_caegory_id", using: :btree
  add_index "products", ["code"], name: "index_products_on_code", using: :btree
  add_index "products", ["name"], name: "index_products_on_name", using: :btree

  create_table "progress_bars", force: :cascade do |t|
    t.text     "message",    limit: 65535
    t.integer  "percent",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "progress_bars", ["user_id"], name: "index_progress_bars_on_user_id", using: :btree

  create_table "role_menus", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "role_id",    limit: 4
    t.boolean  "is_used"
    t.integer  "menu_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "system_codes", force: :cascade do |t|
    t.string   "code_type",      limit: 255
    t.string   "code",           limit: 255
    t.string   "name",           limit: 255
    t.integer  "system_code_id", limit: 4
    t.string   "description",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "system_codes", ["system_code_id"], name: "index_system_codes_on_system_code_id", using: :btree

  create_table "trust_moneys", force: :cascade do |t|
    t.string   "source_type", limit: 255
    t.integer  "agency_id",   limit: 4
    t.text     "etc",         limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "trust_moneys", ["agency_id"], name: "index_trust_moneys_on_agency_id", using: :btree

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
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "categories", "categories"
  add_foreign_key "system_codes", "system_codes"
  add_foreign_key "trust_moneys", "agencies"
end
