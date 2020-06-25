class CollegesFaculty < ApplicationRecord
    belongs_to :category
    belongs_to :college
    belongs_to :faculty
    has_many :rankings
end
