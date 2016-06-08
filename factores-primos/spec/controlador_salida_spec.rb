require 'rspec' 
require_relative '../model/controlador_salida'

describe 'controlador_salida' do

  it 'deberia devolver Factores primos 90: 2 3 3 5  cuando formatearPretty 90' do
    formateador = ControladorDeSalida.new
  expect(formateador.formatearPretty(90,["2", "3", "3", "5"])).to eq "Factores primos 90: 2 3 3 5 "
  end

  it 'deberia devolver Factores primos 360: 2 2 2 3 3 5 cuando formatearPretty 360' do
    formateador = ControladorDeSalida.new
  expect(formateador.formatearPretty(360,["2","2","2","3","3","5"])).to eq "Factores primos 360: 2 2 2 3 3 5 "
  end

  it 'deberia devolver Factores primos 2: 2 cuando formatearPretty con numero que no se descompone' do
    formateador = ControladorDeSalida.new
  expect(formateador.formatearPretty(2,["2"])).to eq "Factores primos 2: 2 "
  end

  it 'deberia devolver 2\n3\n3\n5  cuando formatearQuiet 90' do
    formateador = ControladorDeSalida.new
  expect(formateador.formatearQuiet(["2","3","3","5"])).to eq "2\n3\n3\n5\n"
  end



end