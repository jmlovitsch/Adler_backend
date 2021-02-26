class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.references :assessmentable, polymorphic: true, null: false
      t.string :author
      t.integer :admission_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
