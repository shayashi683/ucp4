class EvaluateLife < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_life
    has_one :scrape_life
    has_one :elements_edu

    def self.update_all_region_diversity
        all.each do |evaluate_life|
            evaluate_life.update(region_diversity: evaluate_life.region_diversity)
        end
     end
    def calc_region_diversity
        100*(1-(elements_life.the_region_student_n/elements_edu.faculty_students_n))
    end


end
