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

ActiveRecord::Schema.define(version: 20170223172155) do

  create_table "accounts", force: :cascade do |t|
    t.string   "shopify_account_url"
    t.string   "shopify_password"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.bigint   "shopify_shop_id"
    t.string   "shopify_shop_name"
    t.string   "shop_owner"
    t.string   "email"
    t.index ["email"], name: "index_accounts_on_email"
    t.index ["shopify_account_url"], name: "index_accounts_on_shopify_account_url"
  end

  create_table "column_fix4s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contests", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id",   limit: 8
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "max_result"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "product_name"
    t.integer  "order_id"
    t.index ["order_id"], name: "index_contests_on_order_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint   "order_id"
    t.integer  "variant_id",         limit: 8
    t.integer  "shopify_product_id", limit: 8
    t.integer  "shopify_variant_id", limit: 8
    t.float    "unit_price"
    t.integer  "quantity"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["shopify_variant_id"], name: "index_order_items_on_shopify_variant_id"
    t.index ["variant_id"], name: "index_order_items_on_variant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.bigint   "shopify_order_id"
    t.datetime "order_date"
    t.float    "total"
    t.integer  "line_item_count"
    t.string   "financial_status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.bigint   "shopify_product_id"
    t.datetime "last_shopify_sync"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "variants", force: :cascade do |t|
    t.bigint   "product_id"
    t.integer  "shopify_variant_id", limit: 8
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "sku"
    t.string   "barcode"
    t.float    "price"
    t.datetime "last_shopify_sync"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["product_id"], name: "index_variants_on_product_id"
  end

end
