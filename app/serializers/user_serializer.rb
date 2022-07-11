class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :wallet, :member_points
end
