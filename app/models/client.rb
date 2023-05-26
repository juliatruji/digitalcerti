class Client < ApplicationRecord
  belongs_to :geolocation
  has_many :locations, dependent: :destroy
end
