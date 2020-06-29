class EvaluateLife < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_lives
    has_one :scrape_lives
end
