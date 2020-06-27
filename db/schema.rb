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

ActiveRecord::Schema.define(version: 2020_06_22_063648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.decimal "z_education_grade"
    t.decimal "z_cost_grade"
    t.decimal "z_staff_grade"
    t.decimal "z_facility_grade"
    t.decimal "z_international_grade"
    t.string "z_life_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.text "intro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string "college_name"
    t.string "college_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges_faculties", force: :cascade do |t|
    t.integer "college_id"
    t.integer "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements_edus", force: :cascade do |t|
    t.integer "evaluste_edu_id"
    t.integer "faculty_student_n"
    t.integer "faculty_teacher_n"
    t.integer "apply_n"
    t.integer "admin_n"
    t.integer "entry_n"
    t.integer "college_delay_n"
    t.integer "college_student_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements_lives", force: :cascade do |t|
    t.integer "evaluate_life_id"
    t.integer "the_region_student_n"
    t.integer "female_student_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elements_staffs", force: :cascade do |t|
    t.integer "evaluate_staff_id"
    t.integer "teacher_expense"
    t.integer "staff_expense"
    t.integer "college_teacher_n"
    t.integer "college_staff_n"
    t.integer "faculty_foreign_teacher_n"
    t.integer "faculty_female_teacher_n"
    t.decimal "teachers_gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_costs", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.integer "tuition"
    t.integer "employment_rate"
    t.integer "scholarship"
    t.decimal "cost_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_edus", force: :cascade do |t|
    t.decimal "curriculum_points"
    t.decimal "relationwc"
    t.decimal "raitio_st"
    t.decimal "competition_rate"
    t.decimal "raitio_adm"
    t.decimal "susp_drop"
    t.decimal "income"
    t.decimal "qualification"
    t.decimal "study_budget"
    t.decimal "activity"
    t.decimal "education_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "colleges_faculties_id"
  end

  create_table "evaluate_facilities", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.integer "facility_expenditure"
    t.integer "institution_expenditure"
    t.integer "own_books"
    t.decimal "facility_repu"
    t.decimal "facility_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_internationals", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.integer "coop_schools"
    t.integer "shortstudy_programs"
    t.integer "faculty_partnerschool"
    t.integer "exchangestudents"
    t.integer "accepted_programs"
    t.decimal "the_assess"
    t.decimal "international_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_lives", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.decimal "region_diversity"
    t.decimal "gender_diversity"
    t.integer "clubs"
    t.decimal "life_repu"
    t.decimal "life_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_reviews", force: :cascade do |t|
    t.integer "faculities_rankings_id"
    t.decimal "total_repu"
    t.decimal "review_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_staffs", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.integer "repu_teacher"
    t.decimal "salary_staff"
    t.decimal "outcome_staff"
    t.decimal "study_budget"
    t.decimal "teachers_diversity"
    t.decimal "teachers_gender"
    t.decimal "staff_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.text "faculty_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "colleges_faculties_id"
    t.integer "established_year"
    t.text "place"
    t.decimal "total_grade"
    t.decimal "cost"
    t.decimal "center_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrape_facilities", force: :cascade do |t|
    t.integer "evaluate_facility_id"
    t.decimal "scrape_repu_facility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrape_lives", force: :cascade do |t|
    t.decimal "scrape_repu_life"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "evaluate_life_id"
  end

  create_table "scrape_reviews", force: :cascade do |t|
    t.integer "evaluate_review_id"
    t.decimal "scrape_repu_review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrape_staffs", force: :cascade do |t|
    t.integer "evaluate_staff_id"
    t.decimal "scrape_repu_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrape_teacher_outcomes", force: :cascade do |t|
    t.integer "evaluate_staff_id"
    t.decimal "scrape_outcome_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assessments", "colleges_faculties", column: "colleges_faculties_id", name: "assessments_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "colleges_faculties", "colleges", name: "colleges_faculties_colleges_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "colleges_faculties", "faculties", name: "colleges_faculties_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_edus", "evaluate_edus", column: "evaluste_edu_id", name: "elements_edus_evaluste_edu_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_lives", "evaluate_lives", name: "elements_lives_evaluate_life_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "elements_staffs", "elements_staffs", column: "evaluate_staff_id", name: "elements_staffs_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_costs", "colleges_faculties", column: "colleges_faculties_id", name: "evaluate_costs_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_edus", "colleges_faculties", column: "colleges_faculties_id", name: "evaluate_edus_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_facilities", "colleges_faculties", column: "colleges_faculties_id", name: "evaluate_facilities_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_internationals", "colleges_faculties", column: "colleges_faculties_id", name: "evaluate_internationals_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_lives", "colleges_faculties", column: "colleges_faculties_id", name: "evaluate_lives_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_reviews", "colleges_faculties", column: "faculities_rankings_id", name: "evaluate_reviews_faculities_rankings_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "evaluate_staffs", "colleges_faculties", column: "colleges_faculties_id", name: "evaluate_staffs_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "rankings", "colleges_faculties", column: "colleges_faculties_id", name: "rankings_colleges_faculties_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_facilities", "evaluate_facilities", name: "scrape_facilities_evaluate_facility_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_lives", "evaluate_lives", name: "scrape_lives_evaluate_life_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_reviews", "evaluate_reviews", name: "scrape_reviews_evaluate_review_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_staffs", "elements_staffs", column: "evaluate_staff_id", name: "scrape_staffs_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "scrape_teacher_outcomes", "elements_staffs", column: "evaluate_staff_id", name: "scrape_teacher_outcomes_evaluate_staff_id_fkey", on_update: :cascade, on_delete: :cascade
end
