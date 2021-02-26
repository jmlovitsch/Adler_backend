class CreateConsults < ActiveRecord::Migration[6.0]
  def change
    create_table :consults do |t|
        t.string :name
        t.string :provider
        t.string :acknowledged_by
        t.integer :admission_id, null: false, foreign_key: true
        t.string :written_requested_by
        t.string :author

      t.timestamps
    end
  end
end
