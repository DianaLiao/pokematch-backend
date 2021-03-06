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

ActiveRecord::Schema.define(version: 2021_06_01_034449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.integer "api_id"
    t.string "name"
    t.integer "poketype_id"
    t.integer "api_type_id"
    t.string "front_sprite"
    t.string "back_sprite"
    t.string "flavor_text"
    t.integer "capture_rate"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poketypes", force: :cascade do |t|
    t.string "name"
    t.integer "api_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_pokemons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pokemon_id", null: false
    t.integer "times_matched", default: 0
    t.integer "times_caught", default: 0
    t.datetime "first_caught"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "new_catch", default: false
    t.index ["pokemon_id"], name: "index_user_pokemons_on_pokemon_id"
    t.index ["user_id"], name: "index_user_pokemons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "companion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_score", default: 0
    t.string "companion_name", default: "My Favorite Pok??mon"
    t.string "motto", default: "I want to be the very best, like no one ever was"
  end

  add_foreign_key "user_pokemons", "pokemons"
  add_foreign_key "user_pokemons", "users"
end
