class CreateDrugs < ActiveRecord::Migration[6.0]
  def change
    create_table :drugs do |t|
      t.string :generic_name
      t.string :brand_name
      t.string :product_type
      t.string :route
      t.string :substance_name
      t.string :active_ingredients
      t.string :dosage_form

      t.timestamps
    end
  end
end
