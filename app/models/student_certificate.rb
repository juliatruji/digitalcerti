class StudentCertificate < ApplicationRecord
  enum status: {
    active: 0,
    disabled: 1
  }
  belongs_to :student
end
