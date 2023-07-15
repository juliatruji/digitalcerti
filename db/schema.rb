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

ActiveRecord::Schema.define(version: 2023_06_09_025151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certificate_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_certificate_categories_on_client_id"
  end

  create_table "certificates", force: :cascade do |t|
    t.string "name"
    t.string "folio"
    t.string "register"
    t.string "description"
    t.bigint "location_id"
    t.bigint "certificate_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["certificate_category_id"], name: "index_certificates_on_certificate_category_id"
    t.index ["location_id"], name: "index_certificates_on_location_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "slug"
    t.string "tradename"
    t.string "description"
    t.string "identification"
    t.string "logo"
    t.jsonb "social", default: {}
    t.string "website"
    t.boolean "active"
    t.jsonb "colors", default: {}
    t.string "domain"
    t.string "banner"
    t.bigint "geolocation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["geolocation_id"], name: "index_clients_on_geolocation_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "iso"
    t.string "var_name"
    t.string "code_phone"
    t.string "language"
    t.string "capital"
    t.string "banner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "var_name"
    t.bigint "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_departments_on_country_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "var_name"
    t.bigint "province_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_districts_on_province_id"
  end

  create_table "geolocations", force: :cascade do |t|
    t.bigint "department_id", null: false
    t.bigint "province_id"
    t.bigint "district_id"
    t.bigint "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_geolocations_on_country_id"
    t.index ["department_id"], name: "index_geolocations_on_department_id"
    t.index ["district_id"], name: "index_geolocations_on_district_id"
    t.index ["province_id"], name: "index_geolocations_on_province_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "identification"
    t.string "domain"
    t.string "description"
    t.string "address"
    t.bigint "client_id", null: false
    t.bigint "geolocation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_locations_on_client_id"
    t.index ["geolocation_id"], name: "index_locations_on_geolocation_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "var_name"
    t.bigint "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_provinces_on_department_id"
  end

  create_table "student_certificates", force: :cascade do |t|
    t.date "issue_date"
    t.date "expiration_date"
    t.string "file"
    t.bigint "student_id", null: false
    t.bigint "certificate_id", null: false
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["certificate_id"], name: "index_student_certificates_on_certificate_id"
    t.index ["student_id"], name: "index_student_certificates_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "identification"
    t.string "address"
    t.bigint "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_students_on_location_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_user_locations_on_location_id"
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "phone"
    t.integer "user_type"
    t.boolean "active"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_users_on_client_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "certificate_categories", "clients"
  add_foreign_key "certificates", "certificate_categories"
  add_foreign_key "certificates", "locations"
  add_foreign_key "clients", "geolocations"
  add_foreign_key "departments", "countries"
  add_foreign_key "districts", "provinces"
  add_foreign_key "geolocations", "countries"
  add_foreign_key "geolocations", "departments"
  add_foreign_key "geolocations", "districts"
  add_foreign_key "geolocations", "provinces"
  add_foreign_key "locations", "clients"
  add_foreign_key "locations", "geolocations"
  add_foreign_key "provinces", "departments"
  add_foreign_key "student_certificates", "certificates"
  add_foreign_key "student_certificates", "students"
  add_foreign_key "students", "locations"
  add_foreign_key "user_locations", "locations"
  add_foreign_key "user_locations", "users"
  add_foreign_key "users", "clients"
end
