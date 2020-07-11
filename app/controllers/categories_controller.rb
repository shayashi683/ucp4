class CategoriesController < ApplicationController
    def show
        @category = Category.find_by(id:params[:id])

        elements_edus = ElementsEdu.all
        elements_edus.each do |elements_edu|
            p elements_edu.faculty_student_n
        end

        evaluate_life = EvaluateLife.all
        evaluate_life.each do |evaluate_life|
            p evaluate_life.region_diversity
        end
        
    end
end