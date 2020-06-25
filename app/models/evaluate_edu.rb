class EvaluateEdu < ApplicationRecord
    belongs_to :assessment
    has_many :elements_edus

    @evaluate_edus = EvaluateEdu.where(evaluate_edu_id: 指定のID)
    sum_faculty_student_n = 0
    sum_faculty_teacher_n = 0
    @evaluate_edus.each do |edu|
    sum_faculty_student_n = sum_faculty_student_n + edu.faculty_student_n
    sum_faculty_teacher_n = sum_faculty_teacher_n + edu.faculty_teacher_n
    end
    
    ratio_st = sum_faculty_student_n/sum_faculty_teacher_n
    EvaluateEdu.new(ratio_st: ratio_st, ...)
end
