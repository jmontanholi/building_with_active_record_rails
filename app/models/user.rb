class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, :email, :password, presence: true
  validates :name, length: { minimum: 6 }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }
end
