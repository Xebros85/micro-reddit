class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 255 }

  belongs_to :user
  has_many :comments
end
