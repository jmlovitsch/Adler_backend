class InterventionSerializer < ActiveModel::Serializer
  attributes :id, :item
  belongs_to :nursing_diagnosis
end
