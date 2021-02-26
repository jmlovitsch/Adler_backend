class IvSerializer < ActiveModel::Serializer
  attributes :id, :author, :iv_type, :dresssing_status, :site_status, :line_status, :dressing_change_due, :cap, :created_at
  belongs_to :admission
end
