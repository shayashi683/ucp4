# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

2.times do |index| 
    Category.create!(:category_name => "カテゴリー#{index}", :intro => "イントロ#{index}")
end

4.times do |index| 
    College.create!(:college_name => "大学#{index}", :college_type => "国立")
end

4.times do |index| 
    Faculty.create!(:faculty_name => "学部#{index}")
end

CollegesFaculty.create!(:college_id => 1, :faculty_id => 1)
CollegesFaculty.create!(:college_id => 2, :faculty_id => 2)
CollegesFaculty.create!(:college_id => 3, :faculty_id => 3)
CollegesFaculty.create!(:college_id => 4, :faculty_id => 4)

Ranking.create!(:colleges_faculty_id => 1, :established_year => 1990, :place => "東京都港区六本木", :center_point => "80.0~83.3%")
Ranking.create!(:colleges_faculty_id => 2, :established_year => 2000, :place => "千葉県千葉市", :center_point => "60.0~63.6%")
Ranking.create!(:colleges_faculty_id => 3, :established_year => 1995, :place => "広島県広島市", :center_point => "50.0~54.3%")
Ranking.create!(:colleges_faculty_id => 4, :established_year => 2004, :place => "福島県郡山市", :center_point => "90.0~92.2%")

Assessment.create!(:colleges_faculty_id => 1)
Assessment.create!(:colleges_faculty_id => 2)
Assessment.create!(:colleges_faculty_id => 3)
Assessment.create!(:colleges_faculty_id => 4)

EvaluateEdu.create!(:colleges_faculty_id => 1, :curriculum_points => 90, :relationwc => 5, :income => 57.2, :qualification => 5, :study_budget => 1.2, :activity => 20)
EvaluateEdu.create!(:colleges_faculty_id => 2, :curriculum_points => 80, :relationwc => 12, :income => 27.2, :qualification => 12, :study_budget => 2.2, :activity => 0)
EvaluateEdu.create!(:colleges_faculty_id => 3, :curriculum_points => 88, :relationwc => 6, :income => 0.9, :qualification => 12, :study_budget => 0.2, :activity => 4)
EvaluateEdu.create!(:colleges_faculty_id => 4, :curriculum_points => 74, :relationwc => 0, :income => 5.2, :qualification => 6, :study_budget => 0.6, :activity => 16)

EvaluateCost.create!(:colleges_faculty_id => 1, :tuition => 20, :employment_rate => 96.0, :scholarship => 20.5)
EvaluateCost.create!(:colleges_faculty_id => 2, :tuition => 12, :employment_rate => 80.0, :scholarship => 0.5)
EvaluateCost.create!(:colleges_faculty_id => 3, :tuition => 0.5, :employment_rate => 76.0, :scholarship => 1.5)
EvaluateCost.create!(:colleges_faculty_id => 4, :tuition => 9.0, :employment_rate => 88.8, :scholarship => 2.5)

EvaluateStaff.create!(:colleges_faculty_id => 1, :repu_teacher => 4.4, :study_budget => 20.0)
EvaluateStaff.create!(:colleges_faculty_id => 2, :repu_teacher => 3.4, :study_budget => 40.0)
EvaluateStaff.create!(:colleges_faculty_id => 3, :repu_teacher => 1.4, :study_budget => 30.0)
EvaluateStaff.create!(:colleges_faculty_id => 4, :repu_teacher => 7.4, :study_budget => 25.0)

EvaluateFacility.create!(:colleges_faculty_id => 1, :facility_expenditure => 20, :institution_expenditure => 30, :own_books => 20)
EvaluateFacility.create!(:colleges_faculty_id => 2, :facility_expenditure => 14, :institution_expenditure => 44, :own_books => 50)
EvaluateFacility.create!(:colleges_faculty_id => 3, :facility_expenditure => 25, :institution_expenditure => 12, :own_books => 20)
EvaluateFacility.create!(:colleges_faculty_id => 4, :facility_expenditure => 44, :institution_expenditure => 3.6, :own_books => 55)

EvaluateInternational.create!(:colleges_faculty_id => 1, :coop_schools => 20, :shortstudy_programs  => 14, :faculty_partnerschool  => 10, :exchangestudents  => 2.0, :accepted_programs => 4)
EvaluateInternational.create!(:colleges_faculty_id => 2, :coop_schools => 10, :shortstudy_programs  => 12, :faculty_partnerschool  => 0, :exchangestudents  => 1.2, :accepted_programs => 0)
EvaluateInternational.create!(:colleges_faculty_id => 3, :coop_schools => 13, :shortstudy_programs  => 4, :faculty_partnerschool  => 5, :exchangestudents  => 4.5, :accepted_programs => 2)
EvaluateInternational.create!(:colleges_faculty_id => 4, :coop_schools => 26, :shortstudy_programs  => 2, :faculty_partnerschool  => 6, :exchangestudents  => 1.3, :accepted_programs => 1)

EvaluateLife.create!(:colleges_faculty_id => 1, :clubs => 102)
EvaluateLife.create!(:colleges_faculty_id => 2, :clubs => 202)
EvaluateLife.create!(:colleges_faculty_id => 3, :clubs => 142)
EvaluateLife.create!(:colleges_faculty_id => 4, :clubs => 292)

EvaluateReview.create!(:colleges_faculty_id => 1)
EvaluateReview.create!(:colleges_faculty_id => 2)
EvaluateReview.create!(:colleges_faculty_id => 3)
EvaluateReview.create!(:colleges_faculty_id => 4)

ElementsEdu.create!(:evaluate_edu_id => 1, :evaluate_staff_id => 1, :faculty_student_n => 1268, :faculty_teacher_n => 27, :apply_n => 1152, :admin_n => 319, :entry_n => 294, :college_delay_n => 58, :college_student_n => 30602)
ElementsEdu.create!(:evaluate_edu_id => 2, :evaluate_staff_id => 2, :faculty_student_n => 268, :faculty_teacher_n => 17, :apply_n => 352, :admin_n => 70, :entry_n => 64, :college_delay_n => 24, :college_student_n => 3602)
ElementsEdu.create!(:evaluate_edu_id => 3, :evaluate_staff_id => 3, :faculty_student_n => 300, :faculty_teacher_n => 37, :apply_n => 300, :admin_n => 40, :entry_n => 194, :college_delay_n => 128, :college_student_n => 2020)
ElementsEdu.create!(:evaluate_edu_id => 4, :evaluate_staff_id => 4, :faculty_student_n => 1230, :faculty_teacher_n => 67, :apply_n => 900, :admin_n => 200, :entry_n => 93, :college_delay_n => 48, :college_student_n => 3003)

ScrapeStaff.create!(:evaluate_staff_id => 1)
ScrapeStaff.create!(:evaluate_staff_id => 2)
ScrapeStaff.create!(:evaluate_staff_id => 3)
ScrapeStaff.create!(:evaluate_staff_id => 4)

ScrapeTeacherOutcome.create!(:evaluate_staff_id => 1)
ScrapeTeacherOutcome.create!(:evaluate_staff_id => 2)
ScrapeTeacherOutcome.create!(:evaluate_staff_id => 3)
ScrapeTeacherOutcome.create!(:evaluate_staff_id => 4)

ElementsStaff.create!(:evaluate_staff_id => 1, :teacher_expense => 17600, :staff_expense => 15500, :college_teacher_n => 400, :college_staff_n => 374, :faculty_foreign_teacher_n => 3, :faculty_female_teacher_n => 4)
ElementsStaff.create!(:evaluate_staff_id => 2, :teacher_expense => 7200, :staff_expense => 4500, :college_teacher_n => 67, :college_staff_n => 34, :faculty_foreign_teacher_n => 5, :faculty_female_teacher_n => 6)
ElementsStaff.create!(:evaluate_staff_id => 3, :teacher_expense => 12300, :staff_expense => 6900, :college_teacher_n => 99, :college_staff_n => 80, :faculty_foreign_teacher_n =>16, :faculty_female_teacher_n => 10)
ElementsStaff.create!(:evaluate_staff_id => 4, :teacher_expense => 9900, :staff_expense => 9000, :college_teacher_n => 80, :college_staff_n => 99, :faculty_foreign_teacher_n => 8, :faculty_female_teacher_n => 8)

ScrapeFacility.create!(:evaluate_facility_id => 1)
ScrapeFacility.create!(:evaluate_facility_id => 2)
ScrapeFacility.create!(:evaluate_facility_id => 3)
ScrapeFacility.create!(:evaluate_facility_id => 4)

ScrapeThe.create!(:evaluate_international_id => 1)
ScrapeThe.create!(:evaluate_international_id => 2)
ScrapeThe.create!(:evaluate_international_id => 3)
ScrapeThe.create!(:evaluate_international_id => 4)

ElementsLife.create!(:evaluate_life_id => 1, :the_region_student_n => 30,:female_student_n => 60)
ElementsLife.create!(:evaluate_life_id => 2, :the_region_student_n => 20,:female_student_n => 30)
ElementsLife.create!(:evaluate_life_id => 3, :the_region_student_n => 26,:female_student_n => 24)
ElementsLife.create!(:evaluate_life_id => 4, :the_region_student_n => 40,:female_student_n => 55)

ScrapeLife.create!(:evaluate_life_id => 1)
ScrapeLife.create!(:evaluate_life_id => 2)
ScrapeLife.create!(:evaluate_life_id => 3)
ScrapeLife.create!(:evaluate_life_id => 4)

ScrapeReview.create!(:evaluate_review_id => 1)
ScrapeReview.create!(:evaluate_review_id => 2)
ScrapeReview.create!(:evaluate_review_id => 3)
ScrapeReview.create!(:evaluate_review_id => 4)

EvaluateEdu.update_all_ratio_st
EvaluateEdu.update_all_competition_rate
EvaluateEdu.update_all_ratio_adm
EvaluateEdu.update_all_susp_drop

EvaluateStaff.update_all_salary_staff
EvaluateStaff.update_all_teachers_diversity
