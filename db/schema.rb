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

ActiveRecord::Schema.define(version: 20171104163430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "config_items", force: :cascade do |t|
    t.bigint "config_id"
    t.string "description"
    t.integer "quantity"
    t.decimal "labor_hours", default: "0.0"
    t.money "unit_cost", scale: 2
    t.decimal "markup_percentage"
    t.index ["config_id"], name: "index_config_items_on_config_id"
  end

  create_table "configs", force: :cascade do |t|
    t.bigint "cost_sheet_id"
    t.string "name"
    t.index ["cost_sheet_id"], name: "index_configs_on_cost_sheet_id"
  end

  create_table "cost_sheets", force: :cascade do |t|
    t.string "project_number"
    t.string "customer_name"
    t.money "default_labor_unit_cost", scale: 2
    t.decimal "default_material_markup"
    t.string "created_by"
    t.string "last_modified_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
