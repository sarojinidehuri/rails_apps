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

ActiveRecord::Schema.define(version: 20160616011032) do

  create_table "assigns", force: true do |t|
    t.integer  "standard_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assigns", ["standard_id"], name: "index_assigns_on_standard_id", using: :btree
  add_index "assigns", ["subject_id"], name: "index_assigns_on_subject_id", using: :btree

  create_table "standards", force: true do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.string   "standard_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "user_id"
    t.integer  "standard_id"
    t.integer  "subject_id"
    t.integer  "assign_id"
    t.string   "student_name"
    t.integer  "student_age"
    t.string   "gender"
    t.string   "standard_name"
    t.string   "subject_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.integer  "user_id"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.string   "subject_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.integer  "user_id"
    t.integer  "standard_id"
    t.integer  "subject_id"
    t.string   "teacher_name"
    t.integer  "teacher_age"
    t.string   "phone_no"
    t.string   "standard_name"
    t.string   "subject_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "confirm_password"
    t.string   "phone_no"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
