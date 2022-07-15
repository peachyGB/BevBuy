class Drink < ApplicationRecord
  belongs_to :user
  has_many :customizations, dependent: :destroy
  has_many :ingredients, through: :customizations
end
