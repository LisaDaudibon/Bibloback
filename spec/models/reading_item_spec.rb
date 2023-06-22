require 'rails_helper'

RSpec.describe ReadingItem, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @book = FactoryBot.create(:book)
    @reading_list = FactoryBot.create(:reading_list, user: @user)
    @reading_goal = FactoryBot.create(:reading_goal, user: @user)

    @reading_item = FactoryBot.create(:reading_item, book: @book, reading_list: @reading_list, reading_goal: @reading_goal)
  end

  context "'factory book" do
    it "has a valid factory" do
      # teste toujours tes factories pour voir si elles sont valides
      expect(@reading_item).to be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a book' do
      association = described_class.reflect_on_association(:book)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'belongs to a reading list' do
      association = described_class.reflect_on_association(:reading_list)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'belongs to a reading goal' do
      association = described_class.reflect_on_association(:reading_goal)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
