class DailycareSerializer < ActiveModel::Serializer
  attributes :id, :admission_id, :author, :date_initiated, :nursing_diagnosis, :goals_outcomes, :interventions, :evaluation, :created_at, :updated_at
  belongs_to :admission
end
