class Recipe < ApplicationRecord
  validates :name, :ingredients, :directions, :cook_time, presence: true

  before_create :set_likes

  def set_likes
    self.likes = 0
  end
end
