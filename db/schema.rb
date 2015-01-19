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

ActiveRecord::Schema.define(version: 20150119043911) do

  create_table "activities", force: true do |t|
    t.string   "verb"
    t.integer  "amount"
    t.string   "subject"
    t.string   "interval"
    t.string   "relationship"
    t.integer  "user_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activity_receipts", force: true do |t|
    t.integer  "amount"
    t.integer  "activity_id"
    t.datetime "time_stamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bounties", force: true do |t|
    t.string   "description"
    t.integer  "value"
    t.datetime "deadline"
    t.string   "category"
    t.integer  "author_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.string   "category"
    t.string   "description"
    t.integer  "value"
    t.datetime "date"
    t.integer  "author_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "content"
    t.integer  "card_id"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data", force: true do |t|
    t.string   "label"
    t.decimal  "amount"
    t.integer  "activity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datum_receipts", force: true do |t|
    t.decimal  "amount"
    t.datetime "time_stamp"
    t.integer  "data_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "habits", force: true do |t|
    t.string   "verb"
    t.integer  "amount"
    t.string   "subject"
    t.integer  "interval_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "penalty",     default: 0
  end

  create_table "indulgences", force: true do |t|
    t.string   "verb"
    t.integer  "amount"
    t.string   "subject"
    t.integer  "interval_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modification_receipts", force: true do |t|
    t.integer  "new_points"
    t.integer  "activity_id"
    t.datetime "time_stamp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "new_penalty"
  end

  create_table "opportunities", force: true do |t|
    t.string   "name"
    t.boolean  "is_complete"
    t.datetime "due_date"
    t.string   "user_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "single_actions", force: true do |t|
    t.string   "name"
    t.boolean  "is_complete"
    t.datetime "due_date"
    t.integer  "user_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.boolean  "is_complete"
    t.datetime "due_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "tough_love",   default: true
  end

end
