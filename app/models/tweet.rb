class Tweet < ApplicationRecord
  validates :text, length: {maximum: 280}




  belongs_to :user
end
