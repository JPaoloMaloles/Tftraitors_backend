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

ActiveRecord::Schema[7.0].define(version: 2024_02_06_183147) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_summoner_performances", force: :cascade do |t|
    t.integer "match_id"
    t.integer "summoner_info_id"
    t.string "riot_match_id"
    t.string "puuid"
    t.integer "gold_left"
    t.integer "last_round"
    t.integer "placement"
    t.integer "players_eliminated"
    t.float "time_eliminated"
    t.integer "total_damage_to_players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_augment"
    t.string "second_augment"
    t.string "third_augment"
    t.integer "companion_id"
    t.integer "level"
    t.text "traits", default: [], array: true
    t.text "units", default: [], array: true
    t.integer "traits_id"
    t.integer "units_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "data_version"
    t.string "riot_match_id"
    t.bigint "game_datetime"
    t.float "game_length"
    t.string "game_version"
    t.integer "queu_id"
    t.string "tft_game_type"
    t.string "tft_set_core_name"
    t.integer "tft_set_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performance_traits", force: :cascade do |t|
    t.integer "trait_id"
    t.integer "match_summoner_performance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performance_units", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "match_summoner_performance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "summoner_infos", force: :cascade do |t|
    t.string "puuid"
    t.string "tier"
    t.string "rank"
    t.integer "league_points"
    t.string "riot_summoner_id"
    t.string "summoner_name"
    t.integer "wins"
    t.integer "losses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
    t.integer "profile_icon_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.integer "num_units"
    t.integer "style"
    t.integer "tier_current"
    t.integer "tier_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "character_id_name"
    t.string "item_names", default: [], array: true
    t.string "name"
    t.integer "rarity"
    t.integer "tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
  end

end
