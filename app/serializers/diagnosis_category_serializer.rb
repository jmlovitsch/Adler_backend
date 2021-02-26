class DiagnosisCategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :nursing_diagnoses
#   has_many :goals, through: :nursing_diagnoses
#   has_many :interventions, through: :nursing_diagnoses
end
