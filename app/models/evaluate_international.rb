class EvaluateInternational < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :scrape_the
end
