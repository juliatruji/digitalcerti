class Student < ApplicationRecord
  belongs_to :location, optional: true
  has_many :student_certificates, dependent: :destroy
  validates :name, presence: true
  validates :email, :phone, presence: true, uniqueness: true
end
