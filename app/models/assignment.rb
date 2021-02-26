class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :admission
    has_one :patient, through: :admission
end
