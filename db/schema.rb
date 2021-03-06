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

ActiveRecord::Schema.define(version: 2021_03_02_103802) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "catchup", null: false
    t.text "good", null: false
    t.integer "type_id", null: false
    t.string "room", null: false
    t.string "room_fee", null: false
    t.string "common_ff", null: false
    t.integer "area_id", null: false
    t.string "deposit", null: false
    t.string "money", null: false
    t.string "guarantee", null: false
    t.string "brokerage", null: false
    t.string "insurance", null: false
    t.string "renew", null: false
    t.string "movein", null: false
    t.text "others", null: false
    t.string "address", null: false
    t.text "traffic", null: false
    t.string "building_name", null: false
    t.string "structure", null: false
    t.string "occupied_area", null: false
    t.string "number", null: false
    t.string "year", null: false
    t.text "specifications", null: false
    t.integer "user_id", null: false
    t.string "image", null: false
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tsukasa_ms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
