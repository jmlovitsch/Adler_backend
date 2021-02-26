class AdmissionSerializer < ActiveModel::Serializer
    attributes :id,
    :admitting_diagnosis,
    :admission_date,
    :current_room,
    :expected_discharge,
    :code_status,
    :who_authorized_share,
    :religion_and_parish,
    :patient,:pains,
    :vitals,
    :ivs,
    :dailycares,
    :intakeoutputs,
    :labs,
    :care_plans,
    :consults,
    :imagings,
    :diets,
    :transfers,
    :admitting,
    :educations,
    :rxes,
    :shift_assessments,
    :shift_notes,
    :summaries,
    :transfers,
    :physical_assessments

    has_many :vitals
    has_many :pains
    has_many :ivs
    has_many :dailycares
    has_many :intakeoutputs
    has_many :labs
    has_many :care_plans
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

    has_many :assignments
    has_many :users, through: :assignments
    has_many :physical_assessments

    belongs_to :patient, :class_name => "User"

  end
