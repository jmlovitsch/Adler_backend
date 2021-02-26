class Admission < ApplicationRecord
    belongs_to :patient, :class_name => "User"
    has_many :assignments
    has_many :users, through: :assignments
    has_many :vitals
    has_many :pains
    has_many :ivs
    has_many :dailycares
    has_many :intakeoutputs
    has_many :medications
    has_many :labs
    has_many :nursings
    has_many :consults
    has_many :imagings
    has_many :diets
    has_many :transfers
    has_one :admitting
    has_many :educations
    has_many :rxes
    has_many :shift_assessments
    has_many :shift_notes
    has_many :summaries
    has_many :transfers
    has_many :care_plans
    has_many :physical_assessments
end
