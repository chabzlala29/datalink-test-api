require 'rails_helper'

RSpec.describe 'Devices API', type: :request do
  let!(:devices) { create_list(:device, 10) }

  describe 'GET /api/v1/devices' do
    before { get '/api/v1/devices' }

    it 'returns devices' do
      expect(json).not_to be_empty
      expect(json.size).to eq 10
    end
  end
end
