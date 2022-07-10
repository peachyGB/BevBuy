class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :wallet, :member_points
end
