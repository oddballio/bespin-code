require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { build(:review) }
  context 'with valid attributes' do
    it 'is valid' do
      expect(review).to be_valid
    end
  end

  context 'with invalid attributes' do
    %i[service_id rating].each do |attr|
      it "is invalid without #{attr}" do
        review.send("#{attr}=", nil)
        expect(review).to_not be_valid
      end
    end
  end
end
