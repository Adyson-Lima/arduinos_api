require 'rails_helper'

RSpec.describe Api::V1::ArduinosController, type: :controller do

  before{@arduino = Arduino.create(name: 'mini', description: 'arduino compacto')}

  describe 'GET /api/v1/arduinos' do
    it 'Consegue listar todos os arduinos e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end