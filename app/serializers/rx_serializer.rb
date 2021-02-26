class RxSerializer < ActiveModel::Serializer
  attributes :route, :iv_rate, :source_location, :dose, :time_due, :duration, :frequency, :if_prn_reason, :duration, :provider, :acknowledged_by, :admission_id, :written_requested_by
 belongs_to :admission
end
