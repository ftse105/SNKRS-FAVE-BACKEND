class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :brand, :image_url, :release_year, :price
end
