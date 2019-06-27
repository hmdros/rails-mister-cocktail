# Review
class Review < ApplicationRecord
  belongs_to :cocktail

  validates :content, presence: true
  validates :rating, inclusion: { in: [*(1..5)] },
                     numericality: { only_integer: true }

  def self.rating_range
    [*(1..5)]
      .reverse
      .map { |nunmber| [nunmber] }
  end

  def date
    created_at.strftime('%d/%m/%Y')
  end
end
