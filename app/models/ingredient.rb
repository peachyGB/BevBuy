class Ingredient < ApplicationRecord
  belongs_to :drink_id
  belongs_to :category_id
end
