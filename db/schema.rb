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

  create_table "hotuniversites", id: false, force: true do |t|
    t.string "institution_name",        limit: 200
    t.string "institution_address",     limit: 200
    t.string "institution_city",        limit: 20
    t.string "institution_state",       limit: 20
    t.string "institution_zip",         limit: 20
    t.string "institution_phone",       limit: 20
    t.string "institution_web_address", limit: 20
    t.string "accreditation_status",    limit: 20
  end

  create_table "majorrankings", primary_key: "name_abb", force: true do |t|
    t.string "institution_name",        limit: 50
    t.string "institution_address",     limit: 50
    t.string "institution_city",        limit: 50
    t.string "institution_state",       limit: 20
    t.string "institution_zip",         limit: 20
    t.string "institution_web_address", limit: 50
  end

  create_table "my_schools", force: true do |t|
    t.string   "name"
    t.text     "comment"
    t.integer  "user_id",    limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "school_id",  limit: nil
  end

  add_index "my_schools", ["school_id"], name: "index_my_schools_on_school_id"
  add_index "my_schools", ["user_id", "created_at"], name: "i_my_sch_use_id_cre_at"
  add_index "my_schools", ["user_id"], name: "index_my_schools_on_user_id"

  create_table "recommendeduniversities", primary_key: "name_abb", force: true do |t|
    t.string "institution_name",        limit: 50
    t.string "institution_address",     limit: 50
    t.string "institution_city",        limit: 50
    t.string "institution_state",       limit: 50
    t.string "institution_zip",         limit: 20
    t.string "institution_web_address", limit: 50
  end

  create_table "relationships", force: true do |t|
    t.integer  "follower_id", limit: nil
    t.integer  "followed_id", limit: nil
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "relationships", ["followed_id"], name: "i_relationships_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "i_rel_fol_id_fol_id", unique: true
  add_index "relationships", ["follower_id"], name: "i_relationships_follower_id"

  create_table "reviews", force: true do |t|
    t.text     "body"
    t.integer  "user_id",    limit: nil
    t.integer  "school_id",  limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "reviews", ["school_id"], name: "index_reviews_on_school_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "schools", force: true do |t|
    t.integer  "Institution_ID",          limit: nil
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
    t.integer  "follow",                  limit: nil, precision: 38, default: 0, null: false
    t.string   "program_name"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                             default: "", null: false
    t.string   "encrypted_password",                                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: nil, precision: 38, default: 0,  null: false
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size",       limit: nil, precision: 38
    t.datetime "avatar_updated_at"
    t.string   "high_school"
    t.string   "college"
    t.string   "grad_university"
    t.string   "major"
    t.string   "app_degree"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

end
