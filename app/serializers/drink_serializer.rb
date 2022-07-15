class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :size, :favorite
  has_one :user_id
  has_many :ingredients, through: :customizations
end
