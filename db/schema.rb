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

ActiveRecord::Schema.define(:version => 20140407140114) do

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
    t.string   "title"
    t.string   "purpose"
    t.string   "scope"
    t.string   "summary"
    t.date     "start_date"
    t.date     "end_date"
    t.date     "close_date"
    t.date     "target_date"
    t.string   "a_type"
    t.string   "department"
    t.string   "location"
    t.string   "auditor_name"
    t.string   "auditor_email"
    t.string   "auditee_name"
    t.string   "auditee_email"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
  end

  add_index "auditinits", ["user_id"], :name => "index_auditinits_on_user_id"

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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
