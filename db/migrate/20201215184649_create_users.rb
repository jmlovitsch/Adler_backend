class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
        t.string :username
      t.string :password_digest
      t.boolean :patient
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :health_insurance_provider
      t.string :health_insurance_policy_number
      t.string :health_insurance_id
      t.string :billing_address
      t.string :billing_address_2
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.integer :home_phone
      t.integer :cell_phone
      t.string :emergency_contact_name
      t.string :emergency_contact_relationship
      t.string :emergency_contact_phone
      t.string :employee_id
      t.string :employee_type
      t.string :medical_group
      t.string :authorization
      t.string :email
      t.boolean :locked
      t.string :ssn

      t.timestamps
    end
  end
end
