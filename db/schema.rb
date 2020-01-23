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

ActiveRecord::Schema.define(version: 2019_12_25_161750) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foodstuffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.bigint "category_id"
    t.decimal "kcal", precision: 10
    t.decimal "kj", precision: 10
    t.float "density"
    t.decimal "protein", precision: 10
    t.float "ret"
    t.float "caro"
    t.float "e"
    t.float "b_1"
    t.float "b_2"
    t.float "b_6"
    t.float "b_12"
    t.float "fol"
    t.float "c"
    t.float "na"
    t.float "k"
    t.float "ca"
    t.float "mg"
    t.float "p"
    t.float "fe"
    t.float "zn"
    t.float "water"
    t.float "na_cl"
    t.float "portion"
    t.float "fat_ges"
    t.float "fat_gfs"
    t.float "fat_eufs"
    t.float "fat_mufs"
    t.float "fat_chol"
    t.float "carb_ges"
    t.float "carb_mono_di"
    t.float "carb_poly"
    t.float "carb_ball"
    t.index ["category_id"], name: "index_foodstuffs_on_category_id"
  end

  add_foreign_key "foodstuffs", "categories"
end
