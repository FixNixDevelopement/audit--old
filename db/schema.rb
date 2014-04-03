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

ActiveRecord::Schema.define(:version => 20140403061239) do

  create_table "audit_cat_values", :id => false, :force => true do |t|
    t.integer  "auditinits_id"
    t.integer  "categories_id"
    t.integer  "catvalues_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "audit_cat_values", ["auditinits_id"], :name => "index_audit_cat_values_on_auditinits_id"
  add_index "audit_cat_values", ["categories_id"], :name => "index_audit_cat_values_on_categories_id"
  add_index "audit_cat_values", ["catvalues_id"], :name => "index_audit_cat_values_on_catvalues_id"

  create_table "auditinits", :force => true do |t|
    t.string   "a_title"
    t.string   "a_purpose"
    t.string   "a_scope"
    t.string   "a_summary"
    t.date     "a_start_date"
    t.date     "a_end_date"
    t.date     "a_close_date"
    t.date     "a_target_date"
    t.text     "a_note"
    t.integer  "catvalues_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "c_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "catvalues", :force => true do |t|
    t.string   "v_name"
    t.integer  "categories_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "catvalues", ["categories_id"], :name => "index_catvalues_on_categories_id"

end
