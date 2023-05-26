class Geolocation < ApplicationRecord
  belongs_to :department
  belongs_to :province
  belongs_to :district
  has_many :clients, dependent: :destroy
  has_many :locations, dependent: :destroy
end
