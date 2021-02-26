class VitalSerializer < ActiveModel::Serializer
  attributes :id, :bp_systolic, :bp_diastolic, :bp_site, :bp_position, :bp_type, :hr_type, :hr_bpm, :hr_quality, :temp_site, :temp_degree, :rr_hr, :rr_rrmin, :rr_quality, :o2_saturation, :o2_source, :o2_site, :admission_id, :author, :created_at, :updated_at
  belongs_to :admission
end
