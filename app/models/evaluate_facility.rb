class EvaluateFacility < ApplicationRecord
    belongs_to :assessment
    has_many :scrape_facilities
end
