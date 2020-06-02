class EvaluateEdu < ApplicationRecord
  belongs_to :assessment
  has_one :elements_edu
end
