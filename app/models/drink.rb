class Drink < ApplicationRecord
  belongs_to :user
  has_many :customizations
  has_many :ingredients, through: :customizations
end
