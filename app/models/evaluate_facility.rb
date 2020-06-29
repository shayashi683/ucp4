class EvaluateFacility < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_facilities
end
