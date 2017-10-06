class Recipe < ApplicationRecord
  validates :name, :ingredients, :directions, :cook_time, presence: true
end
