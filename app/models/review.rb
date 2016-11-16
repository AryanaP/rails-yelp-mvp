class Review < ApplicationRecord
  belongs_to :restaurant


  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING,
    message: "%{value} is not a valid integer between 1 and 5" }
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
end
