class CreateVitals < ActiveRecord::Migration[6.0]
  def change
    create_table :vitals do |t|
      t.string :bp_systolic
      t.string :bp_diastolic
      t.string :bp_site
      t.string :bp_position
      t.string :bp_type
      t.string :hr_type
      t.string :hr_bpm
      t.string :hr_quality
      t.string :temp_site
      t.string :temp_degree
      t.string :rr_hr
      t.string :rr_rrmin
      t.string :rr_quality
      t.string :o2_saturation
      t.string :o2_source
      t.string :o2_site
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
