# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_14_001225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "street"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "authour"
    t.integer "rate", limit: 2
    t.decimal "price"
    t.integer "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.datetime "arrival_date"
    t.bigint "truck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_orders_on_book_id"
    t.index ["truck_id"], name: "index_orders_on_truck_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string "state"
    t.string "curr_loc"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.bigint "address_id", null: false
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password"
    t.datetime "birth_date"
    t.string "gender", limit: 1
    t.index ["address_id"], name: "index_users_on_address_id"
  end

  add_foreign_key "orders", "books"
  add_foreign_key "orders", "trucks"
  add_foreign_key "orders", "users"
  add_foreign_key "users", "addresses"
end
