class TransferSerializer < ActiveModel::Serializer
  attributes :id, :patient, :content, :created_at, :updated_at
end
