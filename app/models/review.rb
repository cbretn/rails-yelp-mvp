# a review belongs to a restaurant, and has a content and a rating from 1 to 5.
class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
