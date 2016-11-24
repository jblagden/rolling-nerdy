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

ActiveRecord::Schema.define(version: 20161124005451) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "colours", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.decimal  "tax_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "password"
    t.string   "street_address"
    t.string   "city"
    t.integer  "province_id"
    t.string   "zip_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["province_id"], name: "index_customers_on_province_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "quantity"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.decimal  "total_price", precision: 12, scale: 3
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "date"
    t.integer  "status_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.decimal  "subtotal",    precision: 12, scale: 3
    t.decimal  "tax",         precision: 12, scale: 3
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["status_id"], name: "index_orders_on_status_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "material_id"
    t.integer  "type_id"
    t.integer  "colour_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image"
    t.decimal  "price",       precision: 12, scale: 3
    t.index ["colour_id"], name: "index_products_on_colour_id"
    t.index ["material_id"], name: "index_products_on_material_id"
    t.index ["type_id"], name: "index_products_on_type_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.decimal  "tax_rate"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "useshst"
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
