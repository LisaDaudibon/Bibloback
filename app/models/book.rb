class Book < ApplicationRecord
  has_many :reading_lists, dependent: :destroy
  has_many :reading_goals, dependent: :destroy
  has_many :comments, dependent: :destroy
end
