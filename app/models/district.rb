class District < ApplicationRecord
  belongs_to :province
  has_many :geolocations, dependent: :destroy
end
