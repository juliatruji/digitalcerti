class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum user_type: {
    super_admin: 0,
    location_admin: 1,
    client_admin: 2
  }
  belongs_to :client
  has_many :user_locations, dependent: :destroy
  validates :email, presence: true, uniqueness: true
end
