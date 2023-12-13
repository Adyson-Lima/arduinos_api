require 'rails_helper'

RSpec.describe Arduino, type: :model do

  before{@arduino = Arduino.new}

  describe 'Testes de preenchimento do model Arduino' do

    it 'name consegue ser preenchido?' do
      @arduino.name = 'uno'
      expect(@arduino.name).to eq('uno')
    end

    it 'description consegue ser preenchido?' do
      @arduino.description = 'arduino mais usado'
      expect(@arduino.description).to eq('arduino mais usado')
    end

  end

  describe 'Testes de validação do model Arduino' do

    it 'arduino valido com campos obrigatorios preenchidos?' do
      @arduino.name = 'mega'
      @arduino.description = 'arduino com muitos pinos'
      expect(@arduino).to be_valid
    end

    it 'arduino invalido com campos obrigatorios não preenchidos?' do
      arduino = Arduino.new
      expect(arduino).to be_invalid
    end

  end

end