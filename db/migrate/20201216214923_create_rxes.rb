class CreateRxes < ActiveRecord::Migration[6.0]
  def change
    create_table :rxes do |t|
      t.string :route
      t.string :iv_rate
      t.string :source_location
      t.string :dose
      t.string :time_due
      t.string :frequency
      t.string :if_prn_reason
      t.string :duration
      t.string :provider
      t.string :acknowledged_by
      t.integer :admission_id, null: false, foreign_key: true
      t.string :written_requested_by

      t.timestamps
    end
  end
end
