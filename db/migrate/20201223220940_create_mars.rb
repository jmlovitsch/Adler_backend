class CreateMars < ActiveRecord::Migration[6.0]
  def change
    create_table :mars do |t|
      t.string :text
      t.integer :admission_id, null: false, foreign_key: true
      t.string :author

      t.timestamps
    end
  end
end
