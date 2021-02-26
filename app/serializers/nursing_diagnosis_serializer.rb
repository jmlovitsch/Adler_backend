class NursingDiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :name, :goals, :interventions
  has_many :goals
  has_many :interventions

end
