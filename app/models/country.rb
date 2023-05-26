class Country < ApplicationRecord
  has_many :departments, dependent: :destroy
end
