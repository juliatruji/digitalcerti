class Client < ApplicationRecord
  belongs_to :geolocation
  has_many :locations, dependent: :destroy
  has_many :certificate_categories, dependent: :destroy
end
