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

ActiveRecord::Schema.define(version: 2019_11_07_011741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_trgm"
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "nconst"
    t.text "primary_name"
    t.integer "birth_year"
    t.integer "death_year"
    t.text "primary_profession"
    t.text "known_for_titles"
    t.index ["primary_name"], name: "index_players_on_primary_name", opclass: :gin_trgm_ops, using: :gin
  end

  create_table "title_basics", force: :cascade do |t|
    t.string "tconst"
    t.string "title_type"
    t.text "primary_title"
    t.text "original_title"
    t.text "is_adult"
    t.integer "start_year"
    t.integer "end_year"
    t.integer "runtime_minutes"
    t.string "genres"
    t.index ["tconst"], name: "index_title_basics_on_tconst"
  end

end
