class Location < ApplicationRecord
  mount_uploader :logo, LocationUploader
  belongs_to :client
  belongs_to :geolocation, optional: true
  has_many :user_locations, dependent: :destroy
  has_many :certificate_details, dependent: :destroy
end
