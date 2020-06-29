class Assessment < ApplicationRecord
    belongs_to :ranking, optional: true
    has_one :evaluate_edus
    has_one :evaluate_costs
    has_one :evaluate_staffs
    has_one :evaluate_facilities
    has_one :evaluate_internationals
    has_one :evaluate_lives
    has_one :evaluate_reviews
end
