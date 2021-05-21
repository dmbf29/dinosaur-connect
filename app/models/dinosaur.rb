class Dinosaur < ApplicationRecord
  has_many :profiles, dependent: :destroy
  has_many :powers, through: :profiles
  belongs_to :park
  has_one_attached :photo
end
# dinosaur.powers
