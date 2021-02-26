class DischargeSerializer < ActiveModel::Serializer
  attributes :id, :patient, :content
end
