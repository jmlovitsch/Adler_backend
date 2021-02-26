class AddContentToPhysicalAssessments < ActiveRecord::Migration[6.0]
  def change
    add_column :physical_assessments, :content, :text
  end
end
