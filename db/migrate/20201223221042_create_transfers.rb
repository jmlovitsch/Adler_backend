class CreateTransfers < ActiveRecord::Migration[6.0]
  def change
    create_table :transfers do |t|
      t.references :patient
      t.string :content
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
