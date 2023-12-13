class Api::V1::ArduinosController < ApplicationController

  before_action :set_arduino, only: %i[show] #show update destroy

  def index
    @arduinos = Arduino.all 
    render json: @arduinos
  end

  def show
    render json: @arduino
  end

private

def set_arduino
  @arduino = Arduino.find(params[:id])
end

def arduino_params
  params.require(:arduino).permit(:name, :description)
end

end