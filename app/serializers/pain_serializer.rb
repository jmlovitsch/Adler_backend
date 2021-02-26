class PainSerializer < ActiveModel::Serializer
  attributes :id, :assume_pain, :asleep, :scale_type, :scale_value, :orientation, :location, :treatment, :pasero_sedation, :author, :created_at
  belongs_to :admission
end
