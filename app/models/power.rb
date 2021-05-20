class Power < ApplicationRecord
  has_many :profiles
  has_many :dinosaurs, through: :profiles
  validates :name, presence: true, uniqueness: true

  # def to_label
  #   name.downcase
  # end
end
