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

ActiveRecord::Schema.define(version: 2022_07_15_143857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customizations", force: :cascade do |t|
    t.bigint "drink_id", null: false
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_id"], name: "index_customizations_on_drink_id"
    t.index ["ingredient_id"], name: "index_customizations_on_ingredient_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "size"
    t.boolean "favorite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_drinks_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "cost"
    t.integer "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "wallet"
    t.integer "member_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customizations", "drinks"
  add_foreign_key "customizations", "ingredients"
  add_foreign_key "drinks", "users"
end
