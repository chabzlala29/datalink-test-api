require 'rails_helper'

RSpec.describe 'Devices API', type: :request do
  let!(:devices) { create_list(:device, 10) }
  let(:device_id) { devices.first.id }

  describe 'GET /api/v1/devices' do
    before { get '/api/v1/devices' }

    it 'returns devices' do
      expect(json).not_to be_empty
      expect(json.size).to eq 10
    end
  end

  describe 'GET /api/v1/devices/:id' do
    before { get "/api/v1/devices/#{device_id}" }

    context 'when the record exists' do
      it 'returns the device' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(device_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:device_id) { 1005001 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Device/)
      end
    end
  end

  describe 'POST /api/v1/devices' do
    let(:valid_attributes) do
      { device: device.attributes }
    end
    let(:device) { build(:device) }

    context 'when the request is valid' do
      before { post '/api/v1/devices', params: valid_attributes }

      it 'creates a todo' do
        expect(json['name']).to eq(device.name)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/devices', params: { device: { name: 'Foobar' } } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Device mac can't be blank/)
      end
    end
  end

  describe 'PUT /api/devices/:id' do
    let(:valid_attributes) do
      { device: { name: name, serial_no: serial_no, device_mac: device_mac } }
    end
    let(:name) { 'Changed Name' }
    let(:serial_no) { 'changed' }
    let(:device_mac) { 'CHANGEDMAC' }
    let(:device) { devices.first }

    context 'when the record exists' do
      before { put "/api/v1/devices/#{device.id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
        expect(device.reload.name).to eq name
        expect(device.reload.serial_no).to eq serial_no
        expect(device.reload.device_mac).to eq device_mac
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /api/v1/devices/:id' do
    before { delete "/api/v1/devices/#{device_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
      expect(Device.find_by(id: device_id)).to eq nil
    end
  end
end
