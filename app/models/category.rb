class Category < ApplicationRecord
    has_many :ingredients
    has_many :drinks, through: :ingredients
end
