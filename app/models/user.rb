

class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :admissions, :foreign_key => 'patient_id'
    has_many :assignments
    has_many :admissions, through: :assignments
    # has_many :patients, through: :admissions, :foreign_key => 'patient_id'

end
