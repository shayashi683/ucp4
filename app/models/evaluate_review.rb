class EvaluateReview < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_review
end
