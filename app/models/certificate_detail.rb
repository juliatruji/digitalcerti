class CertificateDetail < ApplicationRecord
  belongs_to :location
  belongs_to :certificate_category
  has_many :student_certificates, dependent: :destroy
end
