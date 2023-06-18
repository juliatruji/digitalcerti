class Country < ApplicationRecord
  mount_uploader :banner, CountryUploader
  has_many :departments, dependent: :destroy
  has_many :geolocations, dependent: :destroy
end
