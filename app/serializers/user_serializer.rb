class UserSerializer < ActiveModel::Serializer

  attributes :id,
  :username,
  :patient,
  :first_name,
  :last_name,
  :street_address,
  :street_address_2,
  :city,
  :state,
  :zip,
  :health_insurance_provider,
  :health_insurance_policy_number,
  :health_insurance_id, :medical_group, :billing_address, :billing_address_2, :billing_city, :billing_state, :billing_zip, :home_phone, :cell_phone, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_phone, :employee_id, :authorization, :email,  :assignments

    has_many :assignments
    has_many :admissions,  through: :assignments

    has_many :admissions, :foreign_key => 'patient_id'

end
