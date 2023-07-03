require 'rails_helper'

RSpec.describe Comment, type: :model do
  #creation du book et du user
  let(:user) { FactoryBot.create(:user) }
  let(:book) { FactoryBot.create(:book) }

  #validation des attributs book et user pour commenter
  describe 'validations' do
    it 'is valid with valid attributes' do
      comment = FactoryBot.build(:comment, user: user, book: book)
      expect(comment).to be_valid
    end
 #invalide le commentaire si il est vide
    # it 'is not valid without comments' do
    #   comment = FactoryBot.build(:comment, comments: nil, user: user, book: book)
    #   expect(comment).not_to be_valid
    #   expect(comment.errors[:comments]).to include("Le commentaire ne peut etre vide")
    # end
  end
#test l'appartenance user et book des belongs_to
  describe 'associations' do
    it 'belongs to a user' do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'belongs to a book' do
      association = described_class.reflect_on_association(:book)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
