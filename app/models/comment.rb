class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :body, length: { in: 1..500 }

  scope :add_username, -> { joins(:user).select("comments.*, users.name AS username") }
end
