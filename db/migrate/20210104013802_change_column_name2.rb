class ChangeColumnName2 < ActiveRecord::Migration[6.0]
  def change
    rename_column :nursing_diagnoses, :diagnosis_categories_id, :diagnosis_category_id
  end
end
