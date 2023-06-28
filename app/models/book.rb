class Book < ApplicationRecord
  has_many :reading_items, dependent: :destroy
  has_many :reading_lists, through: :reading_items
  # has_many :reading_goals, through: :reading_items
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :published_date, presence: true
  validates :category, presence: true
  # validates :pages,
  #   numericality: { only_integer: true }

end
