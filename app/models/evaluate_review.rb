class EvaluateReview < ApplicationRecord
    belongs_to :assessment
    has_many :scrape_reviews
end
