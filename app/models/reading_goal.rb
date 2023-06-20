class ReadingGoal < ApplicationRecord
  belongs_to :user
  has_many :reading_items, dependent: :destroy
  has_many :books, through: :reading_items

  validates :pages, numericality: { only_integer: true }
  validates :rating, numericality: { only_integer: true }
  validates :complete, inclusion: [true, false]
end
