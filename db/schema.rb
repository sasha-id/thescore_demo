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

ActiveRecord::Schema.define(version: 2020_09_29_165457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_trgm"
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.string "name"
    t.string "pos"
    t.float "attg"
    t.float "att"
    t.float "yds"
    t.float "avg"
    t.float "ydsg"
    t.float "td"
    t.float "lng"
    t.float "rfd"
    t.float "rfdp"
    t.float "r20ye"
    t.float "r40ye"
    t.float "fum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lng"], name: "index_players_on_lng"
    t.index ["name"], name: "index_players_on_name", opclass: :gin_trgm_ops, using: :gin
    t.index ["name"], name: "players_name2_idx"
    t.index ["td"], name: "index_players_on_td"
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["yds"], name: "index_players_on_yds"
  end

  create_table "teams", force: :cascade do |t|
    t.string "abbreviation"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "players", "teams"
end
