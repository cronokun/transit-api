class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :stops
end
