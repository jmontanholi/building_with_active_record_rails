class Post < ApplicationRecord
  belongs_to :user

  validates :title, :user_id, :body, presence: true
  validates :title, length: { minimum: 8 }
  validates :user_id, numericality: { only_integer: true }
  validates :body, length: { minimum: 20 }

end
