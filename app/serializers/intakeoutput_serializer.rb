class IntakeoutputSerializer < ActiveModel::Serializer
  attributes :id, :author, :po, :percent_meal, :iv, :urine, :urine_occurance, :urine_color, :uring_appearance, :urine_odor, :stool_occurance, :stool_incontinence, :stool_color, :stool_amount, :stool_appearance, :drainage_method, :internal, :external, :urine_catheter, :male_genetalia, :female_genetalia
    belongs_to :admission
end
