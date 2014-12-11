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

ActiveRecord::Schema.define(version: 20141210075901) do

  create_table "majorrankings", force: true do |t|
    t.string   "INSTITUTION_NAME"
    t.string   "INSTITUTION_ADDRESS"
    t.string   "INSTITUTION_CITY"
    t.string   "INSTITUTION_STATE"
    t.string   "INSTITUTION_ZIP"
    t.string   "INSTITUTION_WEB_ADDRESS"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "my_schools", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "school_id"
  end

  add_index "my_schools", ["school_id"], name: "index_my_schools_on_school_id"
  add_index "my_schools", ["user_id", "created_at"], name: "index_my_schools_on_user_id_and_created_at"
  add_index "my_schools", ["user_id"], name: "index_my_schools_on_user_id"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "reviews", force: true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["school_id"], name: "index_reviews_on_school_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "schools", force: true do |t|
    t.string   "Institution_ID"
    t.string   "Institution_Name"
    t.string   "Institution_Address"
    t.string   "Institution_City"
    t.string   "Institution_State"
    t.string   "Institution_Zip"
    t.string   "Institution_Phone"
    t.string   "Institution_Web_Address"
    t.string   "Accreditation_Status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "follow"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "high_school"
    t.string   "college"
    t.string   "grad_university"
    t.string   "major"
    t.string   "app_degree"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
