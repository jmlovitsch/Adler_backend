class CreateAdmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :admissions do |t|
    t.integer :patient_id
    t.string :admitting_diagnosis
    t.datetime :admission_date
    t.string :current_room
    t.datetime :expected_discharge
    t.string :code_status
    t.string :who_authorized_share
    t.string :religion_and_parish

    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    # t.index ["patient_id"], name: "index_admissions_on_patient_id"


      t.timestamps
    end
  end
end
