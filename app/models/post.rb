class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  validates :title, presence: true, length: { minimum: 1, maximum: 50, too_short: "The title must have at least 1 character", too_long: "The title must be less than 51 characters" }
  
  validates :body, presence: true, length: { minimum: 1, maximum: 1000, too_short: "The body must have at least 1 character.", too_long: "The body must be less than 1001 characters." }
end
