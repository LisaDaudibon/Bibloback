require 'rails_helper'

RSpec.describe ReadingGoal, type: :model do
  before do
    @user = FactoryBot.create(:user)

    @reading_goal = FactoryBot.create(:reading_goal, user: @user)
  end

  context "'factory reading goal" do
    it "has a valid factory" do
      # teste toujours tes factories pour voir si elles sont valides
      expect(@reading_goal).to be_valid
    end
  end

  describe 'validations' do
    it 'validates presence of start_date' do
      @reading_goal.start_date = nil
      expect(@reading_goal).not_to be_valid
      expect(@reading_goal.errors[:start_date]).to include("can't be blank")
    end

    it 'validates presence of pages' do
      @reading_goal.pages = "lapin"
      expect(@reading_goal).not_to be_valid
      expect(@reading_goal.errors[:pages]).to include("is not a number")
    end

    it 'validates presence of rating' do
      @reading_goal.rating = "lapin"
      expect(@reading_goal).not_to be_valid
      expect(@reading_goal.errors[:rating]).to include("is not a number")
    end
  end

  describe 'associations' do
    it 'belongs to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
