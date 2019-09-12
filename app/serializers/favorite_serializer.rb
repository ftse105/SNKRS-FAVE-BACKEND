class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :shoe_id, :user_id
  belongs_to :shoe
end
