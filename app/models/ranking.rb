class Ranking < ApplicationRecord
  belongs_to :faculty
  has_many :assessments
end
