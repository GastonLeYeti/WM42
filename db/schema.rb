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

ActiveRecord::Schema[7.0].define(version: 2023_03_08_121625) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "architectures", force: :cascade do |t|
    t.bigint "city_id", null: false
    t.bigint "building_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_architectures_on_building_id"
    t.index ["city_id"], name: "index_architectures_on_city_id"
  end

  create_table "armories", force: :cascade do |t|
    t.string "type"
    t.string "weapon_range"
    t.bigint "universe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universe_id"], name: "index_armories_on_universe_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "map_id", null: false
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["map_id"], name: "index_cities_on_map_id"
  end

  create_table "creatures", force: :cascade do |t|
    t.string "name"
    t.integer "lvl"
    t.bigint "universe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["universe_id"], name: "index_creatures_on_universe_id"
  end

  create_table "funs", force: :cascade do |t|
    t.bigint "party_id", null: false
    t.bigint "option_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_funs_on_option_id"
    t.index ["party_id"], name: "index_funs_on_party_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.boolean "weaponized"
    t.bigint "universe_id", null: false
    t.string "weapon_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universe_id"], name: "index_jobs_on_universe_id"
  end

  create_table "maps", force: :cascade do |t|
    t.bigint "party_id", null: false
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_maps_on_party_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.boolean "used"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.bigint "universe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "bible"
    t.index ["universe_id"], name: "index_parties_on_universe_id"
    t.index ["user_id"], name: "index_parties_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.bigint "party_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_players_on_party_id"
  end

  create_table "pnjs", force: :cascade do |t|
    t.string "name"
    t.integer "lvl"
    t.bigint "job_id", null: false
    t.string "status"
    t.bigint "race_id", null: false
    t.bigint "architecture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "party_id"
    t.text "description"
    t.index ["architecture_id"], name: "index_pnjs_on_architecture_id"
    t.index ["job_id"], name: "index_pnjs_on_job_id"
    t.index ["party_id"], name: "index_pnjs_on_party_id"
    t.index ["race_id"], name: "index_pnjs_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.bigint "universe_id", null: false
    t.string "culture"
    t.string "divinity"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["universe_id"], name: "index_races_on_universe_id"
  end

  create_table "universes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "rarity"
    t.integer "price"
    t.bigint "armory_id", null: false
    t.boolean "lootable"
    t.bigint "party_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.bigint "pnj_id"
    t.string "weapon_range"
    t.index ["armory_id"], name: "index_weapons_on_armory_id"
    t.index ["party_id"], name: "index_weapons_on_party_id"
    t.index ["pnj_id"], name: "index_weapons_on_pnj_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "architectures", "buildings"
  add_foreign_key "architectures", "cities"
  add_foreign_key "armories", "universes"
  add_foreign_key "cities", "maps"
  add_foreign_key "creatures", "universes"
  add_foreign_key "funs", "options"
  add_foreign_key "funs", "parties"
  add_foreign_key "jobs", "universes"
  add_foreign_key "maps", "parties"
  add_foreign_key "parties", "universes"
  add_foreign_key "parties", "users"
  add_foreign_key "players", "parties"
  add_foreign_key "pnjs", "architectures"
  add_foreign_key "pnjs", "jobs"
  add_foreign_key "pnjs", "parties"
  add_foreign_key "pnjs", "races"
  add_foreign_key "races", "universes"
  add_foreign_key "weapons", "armories"
  add_foreign_key "weapons", "parties"
  add_foreign_key "weapons", "pnjs"
end
