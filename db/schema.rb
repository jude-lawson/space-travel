# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_15_040414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captains", force: :cascade do |t|
    t.string "name"
    t.bigint "starship_id"
    t.bigint "homeworld_id"
    t.index ["homeworld_id"], name: "index_captains_on_homeworld_id"
    t.index ["starship_id"], name: "index_captains_on_starship_id"
  end

  create_table "crew_members", force: :cascade do |t|
    t.string "name"
    t.integer "rank"
    t.bigint "homeworld_id"
    t.bigint "starship_id"
    t.index ["homeworld_id"], name: "index_crew_members_on_homeworld_id"
    t.index ["starship_id"], name: "index_crew_members_on_starship_id"
  end

  create_table "homeworlds", force: :cascade do |t|
    t.string "name"
    t.float "galactic_latitude"
    t.float "galactic_longitude"
  end

  create_table "spaceports", force: :cascade do |t|
    t.string "name"
    t.integer "docked_ships"
    t.bigint "homeworld_id"
    t.float "galactic_latitude"
    t.float "galactic_longitude"
    t.index ["homeworld_id"], name: "index_spaceports_on_homeworld_id"
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.bigint "homeworld_id"
    t.bigint "spaceport_id"
    t.bigint "captain_id"
    t.index ["captain_id"], name: "index_starships_on_captain_id"
    t.index ["homeworld_id"], name: "index_starships_on_homeworld_id"
    t.index ["spaceport_id"], name: "index_starships_on_spaceport_id"
  end

  add_foreign_key "captains", "homeworlds"
  add_foreign_key "captains", "starships"
  add_foreign_key "crew_members", "homeworlds"
  add_foreign_key "crew_members", "starships"
  add_foreign_key "spaceports", "homeworlds"
  add_foreign_key "starships", "captains"
  add_foreign_key "starships", "homeworlds"
  add_foreign_key "starships", "spaceports"
end
