class Student < ApplicationRecord
  has_many :student_certificates, dependent: :destroy
end
