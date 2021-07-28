class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user

  has_one :user
  has_many :comments
end
