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

ActiveRecord::Schema[8.0].define(version: 2024_11_18_113838) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchased_resources", force: :cascade do |t|
    t.integer "resource_id", null: false
    t.decimal "price_paid"
    t.datetime "purchased_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_purchased_resources_on_resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.string "image"
    t.string "resource_type"
    t.string "link_url"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_resources_on_category_id"
  end

  add_foreign_key "purchased_resources", "resources"
  add_foreign_key "resources", "categories"
end
