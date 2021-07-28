class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :user

  has_one :user
  has_many :comments
  has_many :likes
end
