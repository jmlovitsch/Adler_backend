class CreateShiftNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :shift_notes do |t|
      t.string :content
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
