require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:role) { build(:role) }
  context 'with valid attributes' do
    it 'is valid' do
      expect(role).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'is invalid' do
      role.name = 'anything'
      expect(role).to_not be_valid
    end
  end
end
