class CreateAdmittings < ActiveRecord::Migration[6.0]
  def change
    create_table :admittings do |t|
      t.references :patient
      t.string :content
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
