class Province < ApplicationRecord
  belongs_to :department
  has_many :districts, dependent: :destroy
end
