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

ActiveRecord::Schema.define(version: 20180219054025) do

  create_table "save_states", force: :cascade do |t|
    t.integer "save_id"
    t.integer "user_id"
    t.integer "bullets"
    t.integer "lives"
    t.integer "score"
    t.string  "difficulty"
  end

  add_index "save_states", ["save_id"], name: "index_save_states_on_save_id"

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string  "user_name"
    t.integer "provider_uid"
    t.string  "provider_name"
  end

  add_index "users", ["user_id"], name: "index_users_on_user_id"

end
