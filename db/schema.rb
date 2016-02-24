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

ActiveRecord::Schema.define(version: 20160224221046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string   "encrypted_schoolname"
    t.string   "encrypted_email"
    t.string   "encrypted_site"
    t.string   "encrypted_lpfi_id"
    t.string   "encrypted_cohort"
    t.string   "encrypted_firstname"
    t.string   "encrypted_middlename"
    t.string   "encrypted_lastname"
    t.string   "encrypted_address1"
    t.string   "encrypted_address2"
    t.string   "encrypted_city"
    t.string   "encrypted_state"
    t.string   "encrypted_zip"
    t.string   "encrypted_county"
    t.string   "encrypted_homephone"
    t.string   "encrypted_workphone"
    t.string   "encrypted_cellphone"
    t.string   "encrypted_gender"
    t.string   "encrypted_birthdate"
    t.string   "encrypted_ethnicity"
    t.string   "encrypted_otherethnic"
    t.string   "encrypted_schoolcity"
    t.string   "encrypted_schooltype"
    t.string   "encrypted_counselor"
    t.string   "encrypted_other_programs"
    t.string   "encrypted_official_gpa"
    t.string   "encrypted_graduationdate"
    t.boolean  "us_citizen"
    t.string   "encrypted_ec1_name"
    t.string   "encrypted_ec1_relationship"
    t.string   "encrypted_ec1_homephone"
    t.string   "encrypted_ec1_cellphone"
    t.boolean  "acceptedtocollege"
    t.boolean  "attendingcollege"
    t.string   "encrypted_stemmajor"
    t.string   "encrypted_graduatedcollege"
    t.string   "encrypted_employer"
    t.string   "encrypted_job_title"
    t.string   "encrypted_grad_school"
    t.string   "encrypted_grad_school_major"
    t.string   "encrypted_grad_school_year_of_graduation"
    t.string   "encrypted_linkedin"
    t.string   "encrypted_interested_in_networking_opportunities"
    t.string   "encrypted_current_city"
    t.string   "encrypted_current_state"
    t.string   "encrypted_professional_development_areas_of_interest"
    t.string   "encrypted_career_areas_of_interest"
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.integer  "user_id"
    t.boolean  "active",                                               default: true
    t.string   "encrypted_currently_searching_for"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
