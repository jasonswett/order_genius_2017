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

ActiveRecord::Schema.define(version: 20170706203045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_models", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_business_models_on_name", unique: true
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price", precision: 15, scale: 2, default: "0.0", null: false
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "order_menu_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "menu_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_order_menu_items_on_menu_item_id"
    t.index ["order_id"], name: "index_order_menu_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "orderer_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_tags", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id", "tag_id"], name: "index_restaurant_tags_on_restaurant_id_and_tag_id", unique: true
    t.index ["restaurant_id"], name: "index_restaurant_tags_on_restaurant_id"
    t.index ["tag_id"], name: "index_restaurant_tags_on_tag_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone", null: false
    t.integer "business_model_id", null: false
    t.index ["business_model_id"], name: "index_restaurants_on_business_model_id"
    t.index ["name"], name: "index_restaurants_on_name", unique: true
    t.index ["phone"], name: "index_restaurants_on_phone", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "order_menu_items", "menu_items"
  add_foreign_key "order_menu_items", "orders"
  add_foreign_key "restaurant_tags", "restaurants"
  add_foreign_key "restaurant_tags", "tags"
  add_foreign_key "restaurants", "business_models"
end
