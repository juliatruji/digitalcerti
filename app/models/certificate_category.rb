class CertificateCategory < ApplicationRecord
  belongs_to :client
  has_many :certificates, dependent: :destroy
end
