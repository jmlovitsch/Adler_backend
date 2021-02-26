class OrderSerializer < ActiveModel::Serializer
  attributes :id, :provider, :acknowledged_by, :patient, :written_requested_by, :frequency, :type, :method
end
