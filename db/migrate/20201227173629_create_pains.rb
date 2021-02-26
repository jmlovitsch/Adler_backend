class CreatePains < ActiveRecord::Migration[6.0]
  def change
    create_table :pains do |t|
      t.boolean :assume_pain
      t.boolean :asleep
      t.string :scale_type
      t.string :scale_value
      t.string :orientation
      t.string :location
      t.string :treatment
      t.string :pasero_sedation
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
