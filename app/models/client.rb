class Client < ApplicationRecord
  mount_uploader :logo, ClientUploader
  mount_uploader :banner, ClientUploader
  belongs_to :geolocation, optional: true
  has_many :locations, dependent: :destroy
  has_many :certificate_categories, dependent: :destroy
  validates :name, presence: true
  validates :email, :phone, presence: true, uniqueness: true
end
