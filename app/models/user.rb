class User < ApplicationRecord   
    has_many :posts
    has_many :comments
    has_many :commented_posts, through: :comments, source: :commentable, source_type: 'Post'
    has_many :likes
    has_many :liked_posts, through: :likes, source: :post
    has_one_attached :avatar, dependent: :destroy

    has_many :friendships
    has_many :friends, through: :friendships
    has_many :inverse_friendships, foreign_key: :friend_id, class_name: 'Friendship'
    has_many :inverse_friends, through: :inverse_friendships, source: :user

    has_secure_password 

end
