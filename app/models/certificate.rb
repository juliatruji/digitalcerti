class Certificate < ApplicationRecord
  enum status: {
    active: 0,
    location_admin: 1,
    client_admin: 2
  }
  belongs_to :location
  belongs_to :student
end
