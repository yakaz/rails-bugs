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

ActiveRecord::Schema.define(:version => 20120806143359) do

  create_table "host_classes", :force => true do |t|
    t.integer "host_id"
    t.integer "puppetclass_id"
  end

  add_index "host_classes", ["host_id"], :name => "index_host_classes_on_host_id"
  add_index "host_classes", ["puppetclass_id"], :name => "index_host_classes_on_puppetclass_id"

  create_table "hosts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lookup_keys", :force => true do |t|
    t.string   "key"
    t.string   "default_value"
    t.integer  "puppetclass_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "lookup_keys", ["puppetclass_id"], :name => "index_lookup_keys_on_puppetclass_id"

  create_table "lookup_values", :force => true do |t|
    t.string   "key"
    t.string   "value"
    t.string   "matcher"
    t.integer  "lookup_key_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "lookup_values", ["lookup_key_id"], :name => "index_lookup_values_on_lookup_key_id"

  create_table "puppetclasses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
