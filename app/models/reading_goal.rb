class ReadingGoal < ApplicationRecord
  belongs_to :user
  has_many :reading_items, dependent: :destroy
  has_many :books, through: :reading_items

  validates :pages, numericality: { only_integer: true }, if: :pages_present?
  validates :rating, numericality: { only_integer: true }, if: :rating_present?
  validates :start_date, presence: true, if: :start_date_present?

  private

  def pages_present?
    pages.present?
  end

  def rating_present?
    rating.present?
  end

  def start_date_present?
    start_date.present?
  end

end
