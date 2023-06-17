class Department < ApplicationRecord
  belongs_to :country
  has_many :provinces, dependent: :destroy
  has_many :geolocations, dependent: :destroy
end
