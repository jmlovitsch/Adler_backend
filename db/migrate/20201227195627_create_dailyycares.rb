class CreateDailyycares < ActiveRecord::Migration[6.0]
  def change
    create_table :dailycares do |t|
        t.integer :admission_id, null: false, foreign_key: true
        t.string :author
      t.datetime :date_initiated
      t.string :nursing_diagnosis
      t.string :goals_outcomes
      t.string :interventions
      t.string :evaluation

      t.timestamps
    end
  end
end
