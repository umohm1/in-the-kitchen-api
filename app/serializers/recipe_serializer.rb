class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :directions, :cook_time

  has_many :ingredients
end
