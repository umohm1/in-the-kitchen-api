class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy

  validates :name, :ingredients, :directions, :cook_time, presence: true
end
