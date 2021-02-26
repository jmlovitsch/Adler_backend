class AddLocationToAdmissionsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :admissions, :heathcare_provider, :string
    add_column :admissions, :location, :string
  end
end
