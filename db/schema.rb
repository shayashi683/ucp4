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

ActiveRecord::Schema.define(version: 2020_06_02_070020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id", null: false, comment: "=rankings.id"
    t.decimal "z_education_grade", comment: "37.5%"
    t.decimal "z_cost_grade", comment: "20.5%"
    t.decimal "z_staff_grade", comment: "12.5%"
    t.decimal "z_facility_grade", comment: "9.5%"
    t.decimal "z_international_grade", comment: "5.0%"
    t.decimal "z_life_grade", comment: "5.0%"
    t.decimal "z_review_grade", comment: "10.0%"
    t.integer "established_year"
  end

  create_table "elements_edus", id: :bigint, default: -> { "nextval('evaluate_edus_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculty_student_n"
    t.integer "faculty_teacher_n"
    t.integer "apply_n"
    t.integer "admin_n"
    t.integer "entry_n"
    t.integer "college_delay_n"
    t.integer "college_student_n"
  end

  create_table "elements_lives", id: :bigint, default: -> { "nextval('evaluate_lives_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "the_region_student_n"
    t.integer "female_student_n"
  end

  create_table "elements_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluate_costs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id", comment: "(=rankings.id)"
    t.integer "tuition"
    t.integer "future_income"
    t.integer "scholarship"
    t.decimal "cost_grade"
  end

  create_table "evaluate_edus", id: :bigint, default: -> { "nextval('elements_edus_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id", comment: "(=rankings.id)"
    t.integer "elements_edu_id"
    t.decimal "curriculum_points", comment: "(25.0%)"
    t.decimal "relationwc", comment: "(15.0%)"
    t.decimal "raitio_st", comment: "(12.5%)\n(=faculty_student_n/faculty_teacher_n)"
    t.decimal "competition_rate", comment: "(7.5%)\n(=apply_n/admin_n)"
    t.decimal "raitio_adm", comment: "(7.5%)\n(=entry_n/admin_n)"
    t.decimal "susp_drop", comment: "(7.5%)\n(=college_delay_n/college_student_n)"
    t.decimal "income", comment: "(7.5%)"
    t.decimal "qualification", comment: "(7.5%)"
    t.decimal "study_budget", comment: "(5.0%)"
    t.decimal "activity", comment: "(5.0%)"
    t.decimal "education_grade"
  end

  create_table "evaluate_facilities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id", comment: "(=rankings.id)"
    t.integer "scrape_facility_id"
    t.integer "facility_expend", comment: "(20.0%)"
    t.integer "institution_expend", comment: "(20.0%)"
    t.integer "own_books", comment: "(10.0%)"
    t.decimal "facility_repu", comment: "(50.0%)"
    t.decimal "facility_grade"
  end

  create_table "evaluate_internationals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id"
    t.integer "coop_schools", comment: "(10.0%)"
    t.integer "shortstudy_programs", comment: "(15.0%)"
    t.integer "faculty_partnerschool", comment: "(15.0%)"
    t.integer "exchangestudents", comment: "(20.0%)"
    t.integer "accepted_programs", comment: "(15.0%)"
    t.decimal "the_assess", comment: " (25.0%)"
    t.decimal "international_grade"
  end

  create_table "evaluate_lives", id: :bigint, default: -> { "nextval('elements_lives_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id", comment: "(=rankings.id)"
    t.integer "elements_life_id"
    t.integer "scrape_life_id"
    t.decimal "region_diversity", comment: "(10.0%)\n(1-(the_region_student_n/\nelements_edu.faculty_students_n))"
    t.decimal "gender_diversity", comment: "(10.0%)\n(1-(female_student_n/\nelements_edu.faculty_students_n))"
    t.integer "clubs", comment: "(30.0%)"
    t.decimal "life_repu", comment: "(50.0%)"
    t.decimal "life_grade"
  end

  create_table "evaluate_reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id", comment: "(=rankings.id)"
    t.integer "scrape_review_id"
    t.decimal "total_repu", comment: "(100%)"
    t.decimal "review_grade"
  end

  create_table "evaluate_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rankings_id"
    t.integer "elements_staff_id"
    t.integer "scrape_staff_id"
    t.integer "scrape_teacher_outcome_id"
    t.integer "repu_teacher", comment: "(35.0%)"
    t.decimal "salary_staff", comment: "(25.0%)\n((teacher_expense+staff_expense)\n/(college_teacher_n/college_staff_n))"
    t.decimal "outcome_staff", comment: "(20.0%)"
    t.decimal "study_budget", comment: "(10.0%)"
    t.decimal "teachers_diversity", comment: "(5.0%)\n(=faculty_foreign_teacher/\nelements_edu.faculty_teacher_n)"
    t.decimal "teachers_gender", comment: "(faculty_women_teacher_n/\nelements_edu.faculty_teacher_n)"
    t.decimal "staff_grade"
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rankings_name", limit: 255
  end

  create_table "rankings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faculities_ranking_types_id", null: false, comment: "=ranking_tyeps.id"
    t.string "faculty_name", limit: 255, null: false
    t.string "college_name", limit: 255, null: false
    t.integer "established_year", comment: "=assessment.established_year"
    t.text "place"
    t.decimal "total_grade", null: false
    t.decimal "competition_rate", comment: "=evaluate_edu.competition_rate"
    t.decimal "cost", comment: "=evaluate_cost.tuition"
    t.decimal "center_point"
  end

  create_table "scrape_facilities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "scrape_repu_facility"
  end

  create_table "scrape_lives", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "scrape_repu_life"
  end

  create_table "scrape_reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "scrape_repu_review"
  end

  create_table "scrape_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "scrape_repu_teacher"
    t.integer "teacher_expense"
    t.integer "staff_expense"
    t.integer "college_teacher_n"
    t.integer "college_staff_n"
    t.integer "faculty_foreign_teacher_n"
    t.integer "faculty_female_teacher_n"
    t.decimal "teachers_gender"
  end

  create_table "scrape_teacher_outcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "scrape_outcome_teacher"
  end

end
