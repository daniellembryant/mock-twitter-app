class User < ApplicationRecord
  validates :name, :presence: true
  validates :name, length: {minimum: 2}
  validates :user_name, :presence: true
  validates :user_name, uniqueness: true
  validates :bio, length: {maximum: 500}
  
  
  
  has_many :tweets
end
