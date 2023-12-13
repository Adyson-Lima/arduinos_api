require 'rails_helper'

RSpec.describe Arduino, type: :model do

  before{@arduino = Arduino.new}

  describe 'Testes de preenchimento do model Arduino' do

    it 'name consegue ser preenchido?' do
      @arduino.name = ''
      expect(@arduino.name).to eq('uno')
    end

  end

end