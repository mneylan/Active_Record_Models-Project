class User < ApplicationRecord
  has_many :posts
  has_many :comments
   
  
  validates :username, presence: true, length: { minimum: 2, maximum: 20, too_short: "The username must have at least 2 characters", too_long: "The username must be less than 21 characters" }, 
  uniqueness: { message: "Username is already taken."} 
end
