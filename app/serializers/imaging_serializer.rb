class ImagingSerializer < ActiveModel::Serializer
  attributes :id, :time, :frequency, :with_contrast, :without_contrast, :with_and_without_contrast
  has_one :admission_id
end
