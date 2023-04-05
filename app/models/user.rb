class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
end
