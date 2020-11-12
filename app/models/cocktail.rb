class Cocktail < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
