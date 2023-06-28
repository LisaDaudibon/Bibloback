class ReadingItem < ApplicationRecord
  belongs_to :book
  # belongs_to :reading_goal
  belongs_to :reading_list

  validates :read, inclusion: [true, false]
end
