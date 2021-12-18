class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :body, length: { in: 1..500 }
end
