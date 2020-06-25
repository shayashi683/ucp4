class Assessment < ApplicationRecord
    belongs_to :ranking
    has_many :evaluate_edus
    has_many :evaluate_costs
    has_many :evaluate_staffs
    has_many :evaluate_facilities
    has_many :evaluate_internationals
    has_many :evaluate_lives
    has_many :evaluate_reviews
