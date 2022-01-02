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

ActiveRecord::Schema.define(version: 2022_01_02_200734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "drills", force: :cascade do |t|
    t.string "name"
    t.integer "drill_type", null: false
    t.integer "num_reps", null: false
    t.integer "run_type"
    t.integer "lift_type"
    t.float "distance"
    t.integer "distance_unit"
    t.string "resistance_exercise"
    t.integer "rep_rest_time"
    t.integer "rep_rest_time_unit", default: 0
    t.float "time_goal"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_workout_drills", force: :cascade do |t|
    t.bigint "user_workout_id", null: false
    t.bigint "workout_drill_id", null: false
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_workout_id"], name: "index_user_workout_drills_on_user_workout_id"
    t.index ["workout_drill_id"], name: "index_user_workout_drills_on_workout_drill_id"
  end

  create_table "user_workouts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "workout_id", null: false
    t.boolean "complete", default: false, null: false
    t.date "date", null: false
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_workouts_on_user_id"
    t.index ["workout_id"], name: "index_user_workouts_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workout_drills", force: :cascade do |t|
    t.bigint "workout_id", null: false
    t.bigint "drill_id", null: false
    t.integer "circuit_number", default: 1, null: false
    t.integer "order_in_circuit", null: false
    t.string "circuit_name"
    t.boolean "between_circuits", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drill_id"], name: "index_workout_drills_on_drill_id"
    t.index ["workout_id"], name: "index_workout_drills_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "week_num", null: false
    t.integer "day_num", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_workout_drills", "user_workouts"
  add_foreign_key "user_workout_drills", "workout_drills"
  add_foreign_key "user_workouts", "users"
  add_foreign_key "user_workouts", "workouts"
  add_foreign_key "workout_drills", "drills"
  add_foreign_key "workout_drills", "workouts"
end
