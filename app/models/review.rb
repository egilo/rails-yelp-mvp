class Review < ApplicationRecord
  SUPPORTED_CATEGORIES = %w[0 1 2 3 4 5]
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }, presence: true, numericality: { only_integer: true }
end
