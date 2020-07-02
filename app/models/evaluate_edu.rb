class EvaluateEdu < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_edu

    def self.update_all_ratio_st
        all.each do |evaluate_edu|
            evaluate_edu.update(ratio_st: evaluate_edu.calc_ratio_st)
        end
     end

    def calc_ratio_st
        self.faculty_student_n / self.faculty_teacher_n
    end
end
