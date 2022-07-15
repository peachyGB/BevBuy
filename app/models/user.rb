class User < ApplicationRecord
    has_many :drinks
    has_many :customizations, through: :drinks
end
