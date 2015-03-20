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

ActiveRecord::Schema.define(version: 20150318160255) do

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
  end

  create_table "regforms", force: true do |t|
    t.integer  "status"
    t.string   "image_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "barcode"
    t.integer  "disccard_id"
    t.integer  "salon_id"
  end

  create_table "salons", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "anketa_folder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
