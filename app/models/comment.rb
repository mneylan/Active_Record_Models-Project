class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, presence: true

  validates :body, presence: true, length: { minimum: 1, maximum: 100, too_short: "Comment must be at least 1 character long.", too_long: "Comment must not be more than 101 characters long."}   
end
