class Customization < ApplicationRecord
  belongs_to :ingredient_id
  belongs_to :drink_id
end
