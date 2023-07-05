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

ActiveRecord::Schema[7.0].define(version: 4000004) do
  create_table "favorites", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_favorites_on_food_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "foods", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.float "moisture"
    t.float "kcal"
    t.float "kj"
    t.float "protein"
    t.float "lipids"
    t.float "cholesterol"
    t.float "carbohydrates"
    t.float "dietary_fiber"
    t.float "ash"
    t.float "calcium"
    t.float "magnesium"
    t.float "manganese"
    t.float "phosphorus"
    t.float "iron"
    t.float "sodium"
    t.float "potassium"
    t.float "copper"
    t.float "zinc"
    t.float "retinol"
    t.float "re"
    t.float "rae"
    t.float "thiamin"
    t.float "riboflavin"
    t.float "pyridoxine"
    t.float "niacin"
    t.float "vitamin_c"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "foods"
  add_foreign_key "favorites", "users"
end
