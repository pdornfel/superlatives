# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140203212938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "launcher_superlatives", force: true do |t|
    t.integer  "superlative_id"
    t.integer  "launcher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "launchers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "superlatives", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",      default: false
    t.string   "uid"
    t.string   "provider"
  end

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "launcher_id"
    t.integer  "superlative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["user_id", "superlative_id"], name: "index_votes_on_user_id_and_superlative_id", unique: true, using: :btree

end
