require 'rails_helper'

RSpec.describe User, type: :model do
  # inclus les param de factory
  before(:all) do
    FactoryBot.reload
  end
  #  FactoryBot cree l'objet user
  let(:user) { FactoryBot.build(:user) }
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
#test validation email password et pseudo uniqueness
  describe 'validations' do

    it 'validates email format' do
      user.email = 'invalid_email'
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include('is invalid')
    end
    
    it 'validates presence of password' do
      user.password = nil
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("can't be blank")
    end

    it 'validates password confirmation matches the password' do
      user.password = 'password'
      user.password_confirmation = 'different_password'
      expect(user).not_to be_valid
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

      it 'validates uniqueness of pseudo' do
        existing_user = FactoryBot.create(:user, pseudo: 'example')
        user = FactoryBot.build(:user, pseudo: 'example')
        expect(user).not_to be_valid
        expect(user.errors[:pseudo]).to include('has already been taken')
      end
    
    
  end

end
