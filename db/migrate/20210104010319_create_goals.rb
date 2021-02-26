class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
        t.string :goal
        t.integer :nursing_diagnosis_id

      t.timestamps
    end
  end
end
