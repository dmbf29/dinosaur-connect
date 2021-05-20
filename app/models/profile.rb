class Profile < ApplicationRecord
  belongs_to :dinosaur
  belongs_to :power
  validates :power, uniqueness: { scope: :dinosaur }
  # same thing
  # validates :dinosaur, uniqueness: { scope: :power }
end
