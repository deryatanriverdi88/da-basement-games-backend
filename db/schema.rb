# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_06_031056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_cards", force: :cascade do |t|
    t.integer "magic_the_gatherig_card_id"
    t.integer "amount"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "magic_the_gatherig_cards", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.integer "category_id"
    t.integer "product_id"
    t.integer "group_id"
    t.string "rarity"
    t.string "sub_type"
    t.string "color"
    t.string "text"
    t.boolean "foil"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "group_name"
    t.decimal "normal_low_price"
    t.decimal "normal_mid_price"
    t.decimal "normal_high_price"
    t.decimal "normal_market_price"
    t.decimal "foil_low_price"
    t.decimal "foil_mid_price"
    t.decimal "foil_high_price"
    t.decimal "foil_market_price"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "role"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
