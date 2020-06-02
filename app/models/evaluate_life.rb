class EvaluateLife < ApplicationRecord
  belongs_to :assessment
  has_one :elements_life
  has_one :scrape_life
end
