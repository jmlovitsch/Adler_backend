class Consult < ApplicationRecord
    has_many :orders, as: :orderable
    belongs_to :admission

end
