# A restaurant has a name, an address, a category and a phone_number
class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
