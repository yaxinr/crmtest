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

ActiveRecord::Schema.define(:version => 20120629075416) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.binary   "icon"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "crm_cases", :force => true do |t|
    t.string   "title"
    t.integer  "isClosed"
    t.integer  "tenant_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crm_contact_infos", :force => true do |t|
    t.text     "data"
    t.integer  "category_id"
    t.integer  "tenant_id"
    t.integer  "is_primary"
    t.integer  "crm_contact_id"
    t.integer  "type_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "crm_contacts", :force => true do |t|
    t.integer  "tenant_id"
    t.integer  "is_company"
    t.text     "notes"
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "industry"
    t.integer  "status_id"
    t.integer  "company_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "deal_milestones", :force => true do |t|
    t.string   "color"
    t.integer  "sort_order"
    t.string   "title"
    t.text     "description"
    t.integer  "probability"
    t.integer  "status"
    t.integer  "tenant_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "deal_milestones", ["tenant_id"], :name => "index_deal_milestones_on_tenant_id"

  create_table "deals", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "responsible"
    t.integer  "crm_contact_id"
    t.string   "bid_currency"
    t.decimal  "bid_value",                  :precision => 50, :scale => 9
    t.integer  "bid_type"
    t.integer  "deal_milestone_id"
    t.integer  "tenant_id"
    t.datetime "expected_close_date"
    t.integer  "per_period_value"
    t.integer  "deal_milestone_probability"
    t.datetime "actual_close_date"
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
  end

  create_table "entity_contacts", :force => true do |t|
    t.integer  "entity_id"
    t.integer  "entity_type"
    t.integer  "crm_contact_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "entity_tags", :force => true do |t|
    t.integer  "entity_id"
    t.integer  "entity_type"
    t.integer  "tag_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "field_descriptions", :force => true do |t|
    t.integer  "tenant_id"
    t.string   "label"
    t.integer  "type"
    t.integer  "sort_order"
    t.string   "mask"
    t.integer  "entity_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "field_values", :force => true do |t|
    t.string   "value"
    t.integer  "entity_id"
    t.integer  "tenant_id"
    t.integer  "field_id"
    t.integer  "entity_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "list_items", :force => true do |t|
    t.string   "title"
    t.integer  "sort_order"
    t.string   "color"
    t.string   "additional_params"
    t.integer  "tenant_id"
    t.integer  "list_type"
    t.string   "description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "relationship_events", :force => true do |t|
    t.integer  "crm_contact_id"
    t.text     "content"
    t.integer  "tenant_id"
    t.integer  "entity_type"
    t.integer  "entity_id"
    t.integer  "category_id"
    t.integer  "have_files"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "title"
    t.integer  "tenant_id"
    t.integer  "entity_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "deadline"
    t.integer  "responsible_id"
    t.integer  "crm_contact_id"
    t.integer  "is_closed"
    t.integer  "tenant_id"
    t.integer  "entity_type"
    t.integer  "entity_id"
    t.integer  "category_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
