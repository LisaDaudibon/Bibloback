require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  describe "email" do
    it { expect(@user).to validate_presence_of(:email) }
  end

end
