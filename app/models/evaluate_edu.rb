class EvaluateEdu < ApplicationRecord
    belongs_to :assessment, optional: true
    has_one :elements_edus
end
