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

ActiveRecord::Schema[7.0].define(version: 2022_07_02_120022) do
  create_table "key_translations", force: :cascade do |t|
    t.integer "origin_key_id"
    t.string "language"
    t.text "translation"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_key_id"], name: "index_key_translations_on_origin_key_id"
  end

  create_table "origin_keys", force: :cascade do |t|
    t.integer "whale_app_id"
    t.string "key"
    t.text "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["whale_app_id"], name: "index_origin_keys_on_whale_app_id"
  end

  create_table "whale_apps", force: :cascade do |t|
    t.string "app_id"
    t.string "name"
    t.string "icon_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
