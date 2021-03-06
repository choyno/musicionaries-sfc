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

ActiveRecord::Schema.define(version: 2020_01_08_034652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clp_contents", force: :cascade do |t|
    t.bigint "clp_id"
    t.string "talk_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clp_id"], name: "index_clp_contents_on_clp_id"
  end

  create_table "clp_contents_songs", id: false, force: :cascade do |t|
    t.bigint "clp_content_id", null: false
    t.bigint "song_id", null: false
  end

  create_table "clps", force: :cascade do |t|
    t.bigint "user_id"
    t.string "sfc_chapter"
    t.string "theme"
    t.string "team_leaders"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clps_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "song_assigns", force: :cascade do |t|
    t.bigint "clp_content_id"
    t.bigint "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clp_content_id"], name: "index_song_assigns_on_clp_content_id"
    t.index ["song_id"], name: "index_song_assigns_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "artist"
    t.text "lyrics_and_chords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_songs_on_slug", unique: true
    t.index ["user_id"], name: "index_songs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clp_contents", "clps"
  add_foreign_key "clps", "users"
  add_foreign_key "song_assigns", "clp_contents"
  add_foreign_key "song_assigns", "songs"
  add_foreign_key "songs", "users"
end
