class CategoriesController < ApplicationController
    def show
        @category = Category.find_by(id:params[:id])

        elements_edus = ElementsEdu.all
        elements_edus.each do |elements_edu|
            p elements_edu.faculty_student_n
        end

        evaluate_edu = EvaluateEdu.all
        evaluate_edu.each do |evaluate_edu|
            p evaluate_edu.raitio_st
        end
        
    end
end