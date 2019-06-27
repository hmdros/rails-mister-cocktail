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

ActiveRecord::Schema.define(version: 2019_06_26_203323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.text "description"
    t.text "instruction"
  end

  create_table "doses", force: :cascade do |t|
    t.text "description"
    t.bigint "cocktail_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_doses_on_cocktail_id"
    t.index ["ingredient_id"], name: "index_doses_on_ingredient_id"
  end

  create_table "hero_classes", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hero_races", force: :cascade do |t|
    t.integer "hero_id"
    t.integer "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_hero_races_on_hero_id"
    t.index ["race_id"], name: "index_hero_races_on_race_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.integer "gold"
    t.integer "range"
    t.string "ability"
    t.integer "hero_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_class_id"], name: "index_heros_on_hero_class_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_combinations", force: :cascade do |t|
    t.integer "item1_id"
    t.integer "item2_id"
    t.integer "item3_id"
    t.integer "item_result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item1_id"], name: "index_item_combinations_on_item1_id"
    t.index ["item2_id"], name: "index_item_combinations_on_item2_id"
    t.index ["item3_id"], name: "index_item_combinations_on_item3_id"
    t.index ["item_result_id"], name: "index_item_combinations_on_item_result_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "effect"
    t.integer "tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.integer "number"
    t.integer "damage"
    t.integer "survability"
    t.integer "utility"
    t.integer "armor"
    t.integer "health"
    t.integer "attack_speed"
    t.integer "dps"
    t.integer "ability_damage"
    t.integer "hero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_levels_on_hero_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "cocktail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_reviews_on_cocktail_id"
  end

  create_table "usabilities", force: :cascade do |t|
    t.integer "item_id"
    t.integer "hero_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_usabilities_on_hero_id"
    t.index ["item_id"], name: "index_usabilities_on_item_id"
  end

  add_foreign_key "doses", "cocktails"
  add_foreign_key "doses", "ingredients"
  add_foreign_key "reviews", "cocktails"
end
