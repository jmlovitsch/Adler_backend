class SummarySerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :updated_at
end