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

ActiveRecord::Schema.define(version: 20160207000128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.integer  "siteabbr"
    t.string   "email"
    t.string   "site"
    t.string   "lpfi_id"
    t.string   "cohort"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "homephone"
    t.string   "workphone"
    t.string   "cellphone"
    t.string   "gender"
    t.string   "birthdate"
    t.string   "ethnicity"
    t.string   "otherethnic"
    t.string   "schoolcity"
    t.string   "schooltype"
    t.string   "counselor"
    t.string   "other_programs"
    t.string   "official_gpa"
    t.string   "graduationdate"
    t.boolean  "us_citizen"
    t.string   "ec1_name"
    t.string   "ec1_relationship"
    t.string   "ec1_homephone"
    t.string   "ec1_cellphone"
    t.boolean  "acceptedtocollege"
    t.boolean  "attendingcollege"
    t.string   "stemmajor"
    t.string   "graduatedcollege"
    t.string   "employment"
    t.string   "job_title"
    t.string   "grad_school"
    t.string   "grad_school_major"
    t.string   "grad_school_year_graduated"
    t.string   "linkedin"
    t.string   "networking_interest"
    t.string   "current_city"
    t.string   "current_state"
    t.string   "current_country"
    t.string   "career_interests"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id"
    t.boolean  "active",                     default: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
