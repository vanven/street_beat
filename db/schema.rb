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

ActiveRecord::Schema.define(version: 20130724233959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concerts", force: true do |t|
    t.string   "name"
    t.datetime "occurs_at"
    t.integer  "cover_charge"
    t.integer  "duration"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "concerts", ["location_id"], name: "index_concerts_on_location_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "street_line1"
    t.string   "street_line2"
    t.string   "zip_code"
    t.string   "lat_lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_slots", force: true do |t|
    t.datetime "starts_at"
    t.integer  "duration"
    t.integer  "concert_id"
    t.integer  "performer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "time_slots", ["concert_id"], name: "index_time_slots_on_concert_id", using: :btree
  add_index "time_slots", ["performer_id"], name: "index_time_slots_on_performer_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "fish"
    t.string   "salt"
    t.string   "code"
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
