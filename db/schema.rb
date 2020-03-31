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

ActiveRecord::Schema.define(version: 2020_03_31_013903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "announcement_researchers", force: :cascade do |t|
    t.bigint "announcement_id"
    t.bigint "researcher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["announcement_id"], name: "index_announcement_researchers_on_announcement_id"
    t.index ["researcher_id"], name: "index_announcement_researchers_on_researcher_id"
  end

  create_table "announcements", force: :cascade do |t|
    t.string "name"
    t.datetime "year"
    t.bigint "area_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_announcements_on_area_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "alphanumeric_id"
    t.string "name_esp"
    t.string "name_area"
    t.string "name_gran_area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "classifications", force: :cascade do |t|
    t.string "alphanumeric_id"
    t.string "name"
    t.integer "order_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "education_levels", force: :cascade do |t|
    t.string "name"
    t.string "order_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "name"
    t.string "dane_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "researchers", force: :cascade do |t|
    t.datetime "birthday"
    t.string "genre_id"
    t.string "genre_name"
    t.bigint "birth_region_id"
    t.string "residence_id"
    t.bigint "residence_region_id"
    t.bigint "classification_id"
    t.bigint "education_level_id"
    t.float "age_in_years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["birth_region_id"], name: "index_researchers_on_birth_region_id"
    t.index ["classification_id"], name: "index_researchers_on_classification_id"
    t.index ["education_level_id"], name: "index_researchers_on_education_level_id"
    t.index ["residence_region_id"], name: "index_researchers_on_residence_region_id"
  end

  add_foreign_key "announcement_researchers", "announcements"
  add_foreign_key "announcement_researchers", "researchers"
  add_foreign_key "announcements", "areas"
  add_foreign_key "researchers", "classifications"
  add_foreign_key "researchers", "education_levels"
  add_foreign_key "researchers", "regions", column: "birth_region_id"
  add_foreign_key "researchers", "regions", column: "residence_region_id"
end
