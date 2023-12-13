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
      @arduino.name = ''
      @arduino.description = ''
      expect(@arduino).to be_valid
    end

  end

end