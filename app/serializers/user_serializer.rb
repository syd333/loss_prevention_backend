class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bio, :password_digest
  # , :liked_posts, :friendships, :inverse_friendships
  has_many :posts

end
