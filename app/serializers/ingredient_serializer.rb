class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :points, :cost
  has_one :drink_id
  has_one :category_id
end
