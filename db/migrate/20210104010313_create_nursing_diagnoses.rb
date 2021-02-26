class CreateNursingDiagnoses < ActiveRecord::Migration[6.0]
  def change
    create_table :nursing_diagnoses do |t|
        t.string :name
        t.integer :diagnosis_categories_id
        
      t.timestamps
    end
  end
end
