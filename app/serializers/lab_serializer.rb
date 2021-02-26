class LabSerializer < ActiveModel::Serializer
  attributes          :issued_how,
   :source,
 :time_due,
 :frequency,
 :provider,
 :acknowledged_by,
 :admission_id,
 :written_requested_by,
 :author,
:created_at

belongs_to :admission
end
