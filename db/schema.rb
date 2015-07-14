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

ActiveRecord::Schema.define(version: 20150714120226) do

  create_table "anketa", force: true do |t|
    t.string   "name"
    t.integer  "size"
    t.string   "type"
    t.integer  "status"
    t.string   "original_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_uid"
  end

  create_table "cardownerchildren", force: true do |t|
    t.integer "cardowner_id"
    t.string  "child_name"
    t.date    "date_of_birth"
  end

  create_table "cardowners", force: true do |t|
    t.string   "fam"
    t.string   "name"
    t.string   "otch"
    t.date     "date_of_birth"
    t.string   "cellphone"
    t.string   "email"
    t.boolean  "pregnant"
    t.boolean  "allow_sms"
    t.boolean  "allow_email"
    t.boolean  "dont_bother"
    t.integer  "place_id"
    t.integer  "channel_id"
    t.string   "another_channel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "last_year_sum"
    t.integer  "last_year_docs"
    t.string   "preferable_brands"
    t.string   "preferable_sizes"
  end

  create_table "channels", force: true do |t|
    t.string "channel_name"
  end

  create_table "disccards", force: true do |t|
    t.string   "number"
    t.string   "barcode"
    t.string   "disccard_type"
    t.string   "client_name"
    t.string   "client_phone"
    t.integer  "regform_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "want_recieve_emails"
    t.boolean  "want_recieve_sms"
    t.boolean  "no_calls"
    t.integer  "cardowner_id"
    t.integer  "salon_id"
    t.boolean  "activity"
  end

  create_table "link_user_to_salons", force: true do |t|
    t.integer "user_id",  null: false
    t.integer "salon_id", null: false
  end

  create_table "places", force: true do |t|
    t.string "place_name"
  end

  create_table "regforms", force: true do |t|
    t.integer  "status"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "barcode"
    t.integer  "disccard_id"
    t.integer  "salon_id"
    t.boolean  "weak_quality", default: false
  end

  create_table "salons", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "anketa_folder"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tb_code"
  end

  create_table "salons_users", id: false, force: true do |t|
    t.integer "salon_id"
    t.integer "user_id"
  end

  add_index "salons_users", ["salon_id"], name: "index_salons_users_on_salon_id"
  add_index "salons_users", ["user_id"], name: "index_salons_users_on_user_id"

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
    t.string   "user_name"
    t.string   "user_lastname"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
