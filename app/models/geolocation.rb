class Geolocation < ApplicationRecord
  belongs_to :department
  belongs_to :province
  belongs_to :district, optional: true
  belongs_to :country
  has_many :clients, dependent: :destroy
  has_many :locations, dependent: :destroy
end
