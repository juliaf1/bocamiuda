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

ActiveRecord::Schema.define(version: 2021_02_22_012723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "nome"
    t.string "cidade"
    t.string "h1"
    t.string "h2"
    t.string "h3"
    t.text "p1"
    t.text "p2"
    t.text "p3"
    t.string "f1"
    t.string "f2"
    t.string "f3"
    t.string "f4"
    t.string "f1_legenda"
    t.string "f2_legenda"
    t.string "f3_legenda"
    t.string "f4_legenda"
    t.string "social"
    t.string "pdf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_artists_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nome"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "artists", "categories"
end
