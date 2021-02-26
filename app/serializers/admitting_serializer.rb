class AdmittingSerializer < ActiveModel::Serializer
  attributes :id, :patient, :content
  belongs_to :admission
end
