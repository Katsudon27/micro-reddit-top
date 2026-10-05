class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 10..30 }

  has_many :posts
end
