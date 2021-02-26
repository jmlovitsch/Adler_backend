class DrugSerializer < ActiveModel::Serializer
  attributes :id, :generic_name, :brand_name, :product_type, :route, :substance_name, :active_ingredients, :dosage_form
end
