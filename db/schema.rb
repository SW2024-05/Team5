# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_11_06_074332) do
  create_table "fittings", force: :cascade do |t|
    t.integer "height"
    t.integer "weight"
    t.integer "neck_round"
    t.integer "shoulder_width"
    t.integer "chest_size"
    t.integer "sleeve_length"
    t.integer "west"
    t.integer "hip"
    t.integer "foot_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "school_name"
    t.integer "school_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "school_id"
    t.string "student_name"
    t.integer "product_id"
    t.integer "fitting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
