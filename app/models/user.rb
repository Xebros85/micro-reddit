class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 25 },  uniqueness: true
  validates :email, presence: true, length: { maximum: 255 },  uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts
  has_many :comments
end
