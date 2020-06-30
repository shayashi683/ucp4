class EvaluateStaff < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_staff
    has_one :scrape_teacher_outcome
    has_one :elements_staff
end
