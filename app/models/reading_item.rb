class ReadingItem < ApplicationRecord
  belongs_to :book
  belongs_to :reading_goal
  belongs_to :reading_list


end
