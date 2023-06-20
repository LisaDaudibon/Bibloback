class ReadingList < ApplicationRecord

  has_many :user 
  belongs_to :book
end
