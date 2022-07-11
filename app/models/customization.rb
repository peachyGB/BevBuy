class Customization < ApplicationRecord
  belongs_to :drink_id
  belongs_to :ingredient_id
  
end
