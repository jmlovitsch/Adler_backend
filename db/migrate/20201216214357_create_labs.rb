class CreateLabs < ActiveRecord::Migration[6.0]
  def change
    create_table :labs do |t|
        t.string :type
        t.string :source
      t.string :time_due
      t.string :frequency
      t.string :provider
      t.string :acknowledged_by
      t.integer :admission_id, null: false, foreign_key: true
      t.string :written_requested_by
      t.string :author

      t.timestamps
    end
  end
end
