class EvaluateLife < ApplicationRecord
    belongs_to :assessment
    has_many :elements_lives
    has_many :scrape_lives
end
