require 'rails_helper'

RSpec.describe V0::ServicesController, type: :controller do

  describe '#show' do
    it 'should return a service and corresponding reviews' do
      service = create(:service)
      create(:review, service: service)
      get 'show', params: { id: service.id }
      expect(JSON.parse(response.body)['data']['attributes'].keys).to eq(['name', 'description'])
      expect(JSON.parse(response.body)['included'].first['type']).to eq('review')
      expect(JSON.parse(response.body)['included'].first['attributes'].keys).to eq(['rating', 'content'])
    end
  end
end
