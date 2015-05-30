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

ActiveRecord::Schema.define(version: 20150530010924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "pg_search_documents", ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.integer  "account_number"
    t.string   "facility_name"
    t.string   "address"
    t.integer  "number_of_employees"
    t.string   "facility_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "risk"
  end

  create_table "violations", force: :cascade do |t|
    t.integer  "account_number"
    t.datetime "date"
    t.string   "inspector"
    t.string   "site_name"
    t.string   "code"
    t.integer  "weight"
    t.string   "comment"
    t.datetime "correct_by"
    t.integer  "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
