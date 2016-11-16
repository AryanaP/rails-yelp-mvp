class Restaurant < ApplicationRecord
has_many :reviews, dependent: :destroy

  CATEGORY = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: CATEGORY,
    message: "%{value} is not a valid category" }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

end
