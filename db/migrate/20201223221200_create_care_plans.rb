class CreateCarePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :care_plans do |t|
      t.string :diagnosis_category
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author
      t.string :nursing_diagnosis
      t.text :ocs
      t.text :acs

      t.timestamps
    end
  end
end
