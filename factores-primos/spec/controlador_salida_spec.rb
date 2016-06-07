require 'rspec' 
require_relative '../model/controlador_salida'

describe 'controlador_salida' do

  it 'deberia devolver un arreglo con 2 3 3 5 cuando descomponerNumerosPrimos 90' do
    formateador = ControladorDeSalida.new
  expect(formateador.formatearPretty(90,["2 3 3 5"])).to eq "Factores primos 90: 2 3 3 5 "
  end



end