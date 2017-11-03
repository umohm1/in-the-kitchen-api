class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :directions, :cook_time, :likes
end
