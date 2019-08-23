require 'rails_helper'

RSpec.describe Service, type: :model do
  let(:service) { build(:service) }
  context 'with valid attributes' do
    it 'is valid' do
      expect(service).to be_valid
    end
  end

  context 'with invalid attributes' do
    it 'is invalid' do
      service.name = nil
      expect(service).to_not be_valid
    end
  end
end
