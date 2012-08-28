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

ActiveRecord::Schema.define(:version => 20111010234400) do

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "filename"
    t.integer  "license_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "downloads", :force => true do |t|
    t.string   "email"
    t.boolean  "license_agreement",  :default => false
    t.string   "ip_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
    t.boolean  "email_notification", :default => false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "quality_assurance",  :default => false
  end

  create_table "licenses", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
