class EvaluateStaff < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_staffs
    has_one :scrape_teacher_outcomes
    has_one :elements_staffs
end
