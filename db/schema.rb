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

ActiveRecord::Schema[7.0].define(version: 2022_11_05_120108) do
  create_table "apartment_tenants", force: :cascade do |t|
    t.integer "apartment_id", null: false
    t.integer "tenant_id", null: false
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_apartment_tenants_on_apartment_id"
    t.index ["tenant_id"], name: "index_apartment_tenants_on_tenant_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.boolean "rented"
    t.string "block"
    t.string "number"
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_apartments_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.date "birthday"
    t.string "email"
    t.string "phone"
    t.boolean "authorized_wpp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residents", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "tenant_id", null: false
    t.string "name"
    t.string "parentage"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_residents_on_owner_id"
    t.index ["tenant_id"], name: "index_residents_on_tenant_id"
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.date "birthday"
    t.string "email"
    t.string "phone"
    t.boolean "authorize_wpp"
    t.date "moving_date"
    t.string "company_name"
    t.string "contact"
    t.date "end_moving_date"
    t.string "company_phone"
    t.string "contact_name"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apartment_tenants", "apartments"
  add_foreign_key "apartment_tenants", "tenants"
  add_foreign_key "apartments", "owners"
  add_foreign_key "residents", "owners"
  add_foreign_key "residents", "tenants"
end
