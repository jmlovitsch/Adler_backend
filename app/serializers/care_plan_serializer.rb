class CarePlanSerializer < ActiveModel::Serializer
  attributes :id, :diagnosis_category, :author, :nursing_diagnosis, :ocs, :acs, :admission_id
end
