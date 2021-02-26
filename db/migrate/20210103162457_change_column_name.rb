class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :labs, :type, :issued_how
  end
end
