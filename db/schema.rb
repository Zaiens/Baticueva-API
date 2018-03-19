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

ActiveRecord::Schema.define(version: 20180316210113) do

  create_table "currencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "code"
    t.string   "precision"
    t.string   "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_currencies_on_code", using: :btree
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "location_id", null: false
    t.string   "code"
    t.string   "name"
    t.string   "level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["code"], name: "index_locations_on_code", using: :btree
    t.index ["level"], name: "index_locations_on_level", using: :btree
    t.index ["location_id"], name: "index_locations_on_location_id", using: :btree
  end

  create_table "permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["code"], name: "index_permissions_on_code", using: :btree
  end

  create_table "permissions_positions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "permission_id"
    t.integer "position_id"
    t.index ["permission_id"], name: "index_permissions_positions_on_permission_id", using: :btree
    t.index ["position_id"], name: "index_permissions_positions_on_position_id", using: :btree
  end

  create_table "positions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_positions_on_code", using: :btree
  end

  create_table "properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "leaseholder_id"
    t.integer  "owner_id"
    t.integer  "broker_id"
    t.integer  "location_id"
    t.string   "address",                                                         null: false
    t.string   "address_number",                                                  null: false
    t.string   "address_department"
    t.string   "property_type",                                                   null: false
    t.integer  "bath",                                                            null: false
    t.integer  "rooms",                                                           null: false
    t.integer  "parking"
    t.decimal  "size_build",                       precision: 10
    t.decimal  "size_terrain",                     precision: 10
    t.decimal  "price_daily",                      precision: 10
    t.decimal  "price_monthly",                    precision: 10
    t.decimal  "price_sell",                       precision: 10
    t.boolean  "cellar"
    t.boolean  "available",                                       default: false, null: false
    t.text     "description",        limit: 65535
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.index ["available"], name: "index_properties_on_available", using: :btree
    t.index ["bath"], name: "index_properties_on_bath", using: :btree
    t.index ["broker_id"], name: "index_properties_on_broker_id", using: :btree
    t.index ["cellar"], name: "index_properties_on_cellar", using: :btree
    t.index ["leaseholder_id"], name: "index_properties_on_leaseholder_id", using: :btree
    t.index ["location_id"], name: "index_properties_on_location_id", using: :btree
    t.index ["owner_id"], name: "index_properties_on_owner_id", using: :btree
    t.index ["parking"], name: "index_properties_on_parking", using: :btree
    t.index ["price_daily"], name: "index_properties_on_price_daily", using: :btree
    t.index ["price_monthly"], name: "index_properties_on_price_monthly", using: :btree
    t.index ["price_sell"], name: "index_properties_on_price_sell", using: :btree
    t.index ["property_type"], name: "index_properties_on_property_type", using: :btree
    t.index ["rooms"], name: "index_properties_on_rooms", using: :btree
    t.index ["size_build"], name: "index_properties_on_size_build", using: :btree
    t.index ["size_terrain"], name: "index_properties_on_size_terrain", using: :btree
  end

  create_table "properties_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "property_id"
    t.integer "tag_id"
    t.index ["property_id"], name: "index_properties_tags_on_property_id", using: :btree
    t.index ["tag_id"], name: "index_properties_tags_on_tag_id", using: :btree
  end

  create_table "resources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "property_id"
    t.string   "type"
    t.string   "filename"
    t.string   "original_filename"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["property_id"], name: "index_resources_on_property_id", using: :btree
  end

  create_table "settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "value"
    t.string   "type_value"
    t.text     "descripton", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["code"], name: "index_settings_on_code", using: :btree
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["code"], name: "index_tags_on_code", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "position_id"
    t.string   "type"
    t.string   "NID"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "gender"
    t.integer  "age"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["NID"], name: "index_users_on_NID", unique: true, using: :btree
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["position_id"], name: "index_users_on_position_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["type"], name: "index_users_on_type", using: :btree
  end

end
