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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_044139) do
  create_table "phones", force: :cascade do |t|
    t.string "number", null: false
    t.datetime "verification_expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_phones_on_number"
  end

  create_table "verification_codes", force: :cascade do |t|
    t.string "code", null: false
    t.datetime "expires_at", null: false
    t.integer "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_verification_codes_on_code"
    t.index ["phone_id"], name: "index_verification_codes_on_phone_id"
  end

  add_foreign_key "verification_codes", "phones"
end
