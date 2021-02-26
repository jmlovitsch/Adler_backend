class CreateIvs < ActiveRecord::Migration[6.0]
  def change
    create_table :ivs do |t|
        t.integer :admission_id, null: false, foreign_key: true
        t.string :author
      t.string :iv_type
      t.string :dresssing_status
      t.string :site_status
      t.string :line_status
      t.datetime :dressing_change_due
      t.boolean :cap

      t.timestamps
    end
  end
end
