class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :cost, :points
end
