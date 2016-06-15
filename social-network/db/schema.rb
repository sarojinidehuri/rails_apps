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

ActiveRecord::Schema.define(version: 20160614152746) do

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.integer  "story_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "order_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_blogs", force: true do |t|
    t.integer  "blog_id"
    t.integer  "user_id"
    t.string   "blog_name"
    t.text     "blog_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.integer  "user_id"
    t.string   "blog_name"
    t.text     "blog_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.integer  "age"
    t.string   "phone_no"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
