require 'rails_helper'

RSpec.describe ReadingList, type: :model do
  let(:user) { FactoryBot.create(:user) }

  it 'has a valid factory' do
    reading_list = FactoryBot.build(:reading_list)
    expect(reading_list).to be_valid
  end
#verifie l'appartenance a user
  describe 'associations' do
    it 'belongs to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
