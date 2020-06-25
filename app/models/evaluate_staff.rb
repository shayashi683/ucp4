class EvaluateStaff < ApplicationRecord
    belongs_to :assessment
    has_many :scrape_staffs
    has_many :scrape_teacher_outcomes
    has_many :elements_staffs
end
