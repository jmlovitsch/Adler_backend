class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :type
      t.datetime :time_start
      t.boolean :eligible_room_service
      t.boolean :eligible_accuchecks
      t.string :notes
      t.string :provider
      t.string :acknowledged_by
      t.integer :admission_id, null: false, foreign_key: true
      t.string :written_requested_by
      t.string :author

      t.timestamps
    end
  end
end
