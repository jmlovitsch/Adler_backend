class ChangeColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :goals, :goal, :item
    rename_column :interventions, :intervention, :item

  end
end
