class Park < ApplicationRecord
  has_many :dinosaurs, dependent: :destroy
  validates :name, presence: true
  validates :banner_url, presence: true
end

# park.destroy
# destroy all dinosaurs that belong to the park
# destroy the park
