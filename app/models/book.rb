class Book < ApplicationRecord
  has_many :reading_items, dependent: :destroy
  has_many :reading_lists, through: :reading_items
  has_many :reading_goals, through: :reading_items
  has_many :comments, dependent: :destroy
end
