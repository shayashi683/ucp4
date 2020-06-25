class Ranking < ApplicationRecord
    belongs_to :colleges_faculty
    has_many :assessments
end
