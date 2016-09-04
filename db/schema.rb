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

ActiveRecord::Schema.define(version: 20160830182615) do
  create_table "authorized_users", force: :cascade do |t|
    t.string   "sunet_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "url_exclusions", force: :cascade do |t|
    t.string   "url_substring"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "vnd_packages", primary_key: "record_id", force: :cascade do |t|
    t.string   "package_id"
    t.string   "package_name"
    t.string   "package_status"
    t.string   "data_pickup_type"
    t.string   "afs_path"
    t.string   "ftp_server"
    t.string   "ftp_user"
    t.string   "ftp_password"
    t.string   "ftp_directory"
    t.string   "ftp_file_prefix"
    t.string   "ftp_list_type"
    t.string   "package_url"
    t.datetime "date_entered"
    t.string   "vendor_name"
    t.string   "holding_code"
    t.string   "comments"
    t.datetime "date_modified"
    t.string   "put_file_loc"
    t.string   "afs_search_string"
    t.string   "url_field"
    t.string   "vendor_id_read"
    t.string   "vendor_id_write"
    t.string   "access_note"
    t.string   "export_note"
    t.string   "junktag_file"
    t.string   "encoding_level"
    t.string   "vnd_catcode"
    t.string   "match_opts"
    t.string   "proc_type"
    t.string   "update_040"
    t.string   "rpt_mail"
    t.string   "access_urls_plats"
    t.string   "date_cat"
    t.string   "export_auth"
    t.string   "preprocess_modify_script"
    t.string   "preprocess_split_script"
    t.string   "preprocess_put_script"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end
end
