class CreateIntakeoutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :intakeoutputs do |t|
        t.integer :admission_id, null: false, foreign_key: true
        t.string :author
      t.string :po
      t.string :percent_meal
      t.string :iv
      t.string :urine
      t.string :urine_occurance
      t.string :urine_color
      t.string :uring_appearance
      t.string :urine_odor
      t.string :stool_occurance
      t.string :stool_incontinence
      t.string :stool_color
      t.string :stool_amount
      t.string :stool_appearance
      t.string :drainage_method
      t.string :internal
      t.string :external
      t.string :urine_catheter
      t.string :male_genetalia
      t.string :female_genetalia

      t.timestamps
    end
  end
end
