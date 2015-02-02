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

ActiveRecord::Schema.define(version: 20150202080331) do

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "type"
    t.string   "description"
    t.string   "image"
    t.integer  "parent_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "language_code"
    t.float    "longtitude"
    t.float    "latitude"
    t.string   "currency_code"
    t.string   "flag_icon"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id"

  create_table "options", force: :cascade do |t|
    t.string   "name"
    t.text     "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.string   "note"
    t.integer  "user_id"
    t.integer  "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["status_id"], name: "index_orders_on_status_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "description"
    t.string   "title"
    t.string   "name"
    t.integer  "status_id"
    t.string   "SKU"
    t.integer  "author"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "feature_image"
  end

  add_index "products", ["status_id"], name: "index_products_on_status_id"

  create_table "provinces", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "title"
    t.string   "name"
    t.string   "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "provinces", ["country_id"], name: "index_provinces_on_country_id"

  create_table "user_roles", force: :cascade do |t|
    t.string   "role_title"
    t.string   "role_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "active"
    t.integer  "user_role_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "users", ["user_role_id"], name: "index_users_on_user_role_id"

end
