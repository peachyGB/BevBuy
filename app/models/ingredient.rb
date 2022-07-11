class Ingredient < ApplicationRecord
has_many :customizations
has_many :drinks, through: :customizations
end
