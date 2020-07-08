class EvaluateEdu < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_edu

    def self.update_all_ratio_st
        all.each do |evaluate_edu|
            evaluate_edu.update(ratio_st: evaluate_edu.calc_ratio_st)
        end
     end
    def calc_ratio_st
        self.elements_edu.faculty_student_n / self.elements_edu.faculty_teacher_n
    end

    def self.update_all_competition_rate
        all.each do |evaluate_edu|
            evaluate_edu.update(competition_rate: evaluate_edu.calc_competition_rate)
        end
     end
    def calc_competition_rate
        self.elements_edu.apply_n / self.elements_edu.admin_n
    end

    def self.update_all_ratio_adm
        all.each do |evaluate_edu|
            evaluate_edu.update(ratio_adm: evaluate_edu.calc_ratio_adm)
        end
     end
    def calc_ratio_adm
        self.elements_edu.entry_n / self.elements_edu.admin_n
    end

    def self.update_all_susp_drop
        all.each do |evaluate_edu|
            evaluate_edu.update(susp_drop: evaluate_edu.calc_susp_drop)
        end
     end
    def calc_susp_drop
        self.elements_edu.college_delay_n / self.elements_edu.college_student_n
    end
end
