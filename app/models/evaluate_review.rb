class EvaluateReview < ApplicationRecord
  belongs_to :assessment
  has_one :scrape_review
end
