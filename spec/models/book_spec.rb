require 'rails_helper'

RSpec.describe Book, type: :model do

  before do
    @book = FactoryBot.create(:book)
  end

  context "'factory book" do
    it "has a valid factory" do
      # teste toujours tes factories pour voir si elles sont valides
      expect(@book).to be_valid
    end
  end

  describe 'validations' do
    it 'validates presence of title' do
      @book.title = nil
      expect(@book).not_to be_valid
      expect(@book.errors[:title]).to include("can't be blank")
    end

    it 'validates presence of author' do
      @book.author = nil
      expect(@book).not_to be_valid
      expect(@book.errors[:author]).to include("can't be blank")
    end

    it 'validates presence of author' do
      @book.published_date = nil
      expect(@book).not_to be_valid
      expect(@book.errors[:published_date]).to include("can't be blank")
    end

    it 'validates presence of author' do
      @book.category = nil
      expect(@book).not_to be_valid
      expect(@book.errors[:category]).to include("can't be blank")
    end
  end
end