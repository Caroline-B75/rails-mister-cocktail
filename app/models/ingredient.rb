class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name
  has_many :doses
end
