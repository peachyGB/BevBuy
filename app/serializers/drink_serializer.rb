class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :size, :favorite
  has_one :user_id
end
