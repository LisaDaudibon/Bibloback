class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :comments, 
    presence: true,
    length: { in: 4..1000,
      too_short: "%{count} caractères est le minimum autorisé !",
      too_long: "%{count} caractères est le maximum autorisé !" }
end
