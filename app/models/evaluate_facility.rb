class EvaluateFacility < ApplicationRecord
  belongs_to :assessment
  has_one :scrape_facility
end
