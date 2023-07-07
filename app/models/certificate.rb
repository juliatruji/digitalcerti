class Certificate< ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :certificate_category
  has_many :student_certificates, dependent: :destroy
  has_many :certificates, dependent: :destroy
end
