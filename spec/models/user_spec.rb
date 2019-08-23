require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  context 'with valid attributes' do
    it 'is valid' do
      expect(user).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'is invalid' do
      user.first_name = nil
      expect(user).to_not be_valid
    end

    context 'with invalid email address' do
      it 'is invalid' do
        user.email = 'jon.doe'
        expect(user).to_not be_valid
      end
    end
  end
end
