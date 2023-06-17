class Country < ApplicationRecord
  has_many :departments, dependent: :destroy
  has_many :geolocations, dependent: :destroy
end
