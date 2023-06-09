class CertificateCategory < ApplicationRecord
  belongs_to :client
  has_many :certificate_details, dependent: :destroy
end
