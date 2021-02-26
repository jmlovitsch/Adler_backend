class CreateDiagnosisCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :diagnosis_categories do |t|
        t.string :name
        

      t.timestamps
    end
  end
end
