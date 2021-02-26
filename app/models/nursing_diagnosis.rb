class NursingDiagnosis < ApplicationRecord
    belongs_to :diagnosis_category
    has_many :goals
    has_many :interventions

end
