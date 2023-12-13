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

  describe 'GET /api/v1/arduinos/id' do
    it 'Consegue listar um arduino especifico e retornar status 200?' do
      get :show, params: {id: @arduino.id}
      expect(response.body).to include_json(id: @arduino.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/arduinos' do
    it 'Consegue criar um arduino e retornar status 201?' do
      post :create, params: {arduino: {name: 'arduino mega', description: 'arduino extendido'}, format: :json}
      expect(response.body).to include_json(name: 'arduino mega')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/arduinos/id' do
    it 'Consegue atualizar um arduino e retornar status 200?' do
      arduino = Arduino.last
      patch :update, params: {arduino: {name: 'lilipad', description: 'placa circular'}, id: arduino.id}
      expect(response.body).to include_json(name: 'lilipad')
      expect(response).to have_http_status(200)
    end
  end

end