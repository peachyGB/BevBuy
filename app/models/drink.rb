class Drink < ApplicationRecord
  belongs_to :user_id
  has_many :ingredients
  has_many :categories, through: :ingredients
end
