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

ActiveRecord::Schema[7.0].define(version: 2023_09_07_204409) do
  create_table "billers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "actions"
    t.string "industries"
    t.boolean "active", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configurations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "payment_processor"
    t.string "consult_processor"
    t.string "payment_sku", default: "various"
    t.string "consult_sku", default: "various"
    t.string "commission_type", default: "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "biller_id", null: false
    t.index ["biller_id"], name: "index_configurations_on_biller_id"
  end

  add_foreign_key "configurations", "billers"
end
