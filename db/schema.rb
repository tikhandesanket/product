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

ActiveRecord::Schema.define(version: 20141020142121) do

  create_table "orders", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name",              limit: 50,                   null: false
    t.integer  "sport_family_id"
    t.string   "sport_family_name", limit: 50,                   null: false
    t.string   "other_names"
    t.string   "description"
    t.string   "tags"
    t.string   "participant_type",  limit: 20
    t.integer  "facility_type_id"
    t.string   "rules",             limit: 1000
    t.boolean  "is_deleted",                     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sports", ["name"], name: "index_sports_on_name"
  add_index "sports", ["sport_family_id"], name: "index_sports_on_sport_family_id"

  create_table "team_sports", force: true do |t|
    t.integer  "team_id",                    null: false
    t.integer  "sport_id",                   null: false
    t.boolean  "is_deleted", default: false
    t.boolean  "delta",      default: true,  null: false
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.integer  "deleter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_sports", ["creator_id"], name: "index_team_sports_on_creator_id"
  add_index "team_sports", ["team_id", "sport_id"], name: "index_team_sports_on_team_id_and_sport_id", unique: true
  add_index "team_sports", ["updater_id"], name: "index_team_sports_on_updater_id"

  create_table "teams", force: true do |t|
    t.integer  "sport_id"
    t.integer  "parent_id"
    t.string   "parent_name",      limit: 50
    t.string   "name",             limit: 50, null: false
    t.string   "short_name",       limit: 25
    t.string   "description"
    t.string   "mascot",           limit: 50
    t.integer  "school_id"
    t.integer  "league_id"
    t.integer  "division_id"
    t.integer  "profile_image_id"
    t.string   "official_website"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["division_id"], name: "index_teams_on_division_id"
  add_index "teams", ["league_id"], name: "index_teams_on_league_id"
  add_index "teams", ["name", "parent_name"], name: "index_teams_on_name_and_parent_name"
  add_index "teams", ["parent_id"], name: "index_teams_on_parent_id"
  add_index "teams", ["school_id"], name: "index_teams_on_school_id"
  add_index "teams", ["sport_id"], name: "index_teams_on_sport_id"

end
