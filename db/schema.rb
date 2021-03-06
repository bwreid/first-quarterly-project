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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130216224237) do

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "username"
    t.string   "password"
    t.integer  "classroom_id"
    t.text     "photo"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "members_strengths", :id => false, :force => true do |t|
    t.integer "member_id"
    t.integer "strength_id"
  end

  create_table "members_weaknesses", :id => false, :force => true do |t|
    t.integer "member_id"
    t.integer "weakness_id"
  end

  create_table "messages", :force => true do |t|
    t.string   "message"
    t.integer  "from"
    t.integer  "member_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recommendations", :force => true do |t|
    t.string   "message"
    t.string   "recommender"
    t.integer  "member_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "strengths", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "weaknesses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
