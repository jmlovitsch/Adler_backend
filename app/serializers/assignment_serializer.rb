class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :admission, :patient
  has_one :user
  has_one :admission
  has_one :patient, through: :admission

end
