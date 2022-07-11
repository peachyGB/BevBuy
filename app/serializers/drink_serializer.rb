class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :size, :cold, :favorite
  has_one :user_id
end
