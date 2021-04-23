class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, :user_id, :post_id, presence: true
  validates :body, length: {minimum: 5 }
  validates :user_id, :post_id, numericality: { only_integer: true }
end
