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

ActiveRecord::Schema.define(:version => 20130604143002) do

  create_table "souffleurs", :force => true do |t|
    t.string   "date"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracteurs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tractors", :force => true do |t|
    t.string   "model"
    t.date     "year"
    t.decimal  "bonus"
    t.decimal  "cost"
    t.string   "serial"
    t.string   "stock"
    t.date     "arrival"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "useds", :force => true do |t|
    t.decimal  "lsp"
    t.decimal  "profit"
    t.decimal  "detail"
    t.decimal  "finance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
