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


ActiveRecord::Schema[7.0].define(version: 2024_01_30_032335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.string "skill_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_skills", force: :cascade do |t|
    t.integer "student_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "capstones", force: :cascade do |t|
    t.integer "student_id"
    t.string "name"
    t.string "description"
    t.string "url"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "bio"
    t.string "linkedin_url"
    t.string "twitter_handle"
    t.string "website_url"
    t.string "resume_url"
    t.string "github_url"
    t.string "photo"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.integer "student_id"
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "student_id"
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
