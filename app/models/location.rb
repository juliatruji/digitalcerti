class Location < ApplicationRecord
  belongs_to :client
  belongs_to :geolocation
  has_many :user_locations, dependent: :destroy
  has_many :certificates, dependent: :destroy
end
