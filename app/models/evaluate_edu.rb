class EvaluateEdu < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_edu

    def raitio_st
        @evaluate_edus = EvaluateEdu.all

        @evaluate_edus.each do |ratio_st|
            ratio_st = ElementsEdu.faculty_student_n/ElementsEdu.faculty_teacher_n
            EvaluateEdu.raitio_st.update()
        end
    end
end
