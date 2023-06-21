require 'rails_helper'

RSpec.describe User, type: :model do
  # inclus les param de factory
  before(:all) do
    FactoryBot.reload
  end

  #  FactoryBot cree l'objet user
  let(:user) { FactoryBot.build(:user) }

  # ...
  describe 'factory user' do
    it 'creates a valid user' do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end
  
    it 'creates a persisted user' do
      user = FactoryBot.create(:user)
      expect(user.persisted?).to be true
    end
  end

  describe 'validations' do

   
  end

end
