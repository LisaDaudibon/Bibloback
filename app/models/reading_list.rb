class ReadingList < ApplicationRecord
  belongs_to :user
  has_many :reading_items, dependent: :destroy
  has_many :books, through :reading_items
end
