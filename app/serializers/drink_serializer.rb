class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :points, :favorite
  has_one :user_id
end
