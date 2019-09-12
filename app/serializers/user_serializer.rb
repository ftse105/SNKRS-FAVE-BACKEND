class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio
  has_many :favorites
  has_many :shoes
end
