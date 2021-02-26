class EducationSerializer < ActiveModel::Serializer
  attributes :id, :content, :author
  belongs_to :admission

end
