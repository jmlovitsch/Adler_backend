class CreateInterventions < ActiveRecord::Migration[6.0]
  def change
    create_table :interventions do |t|
        t.string :intervention
        t.integer :nursing_diagnosis_id

      t.timestamps
    end
  end
end
