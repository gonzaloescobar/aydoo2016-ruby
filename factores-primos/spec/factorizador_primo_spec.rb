require 'rspec' 
require_relative '../model/factorizador_primo'

describe 'factorizador_primo' do

  it 'deberia devolver un arreglo con 2 3 3 5 cuando descomponerNumerosPrimos 90' do
    factorizador = FactorizadorPrimo.new
  expect(factorizador.descomponerNumerosPrimos(90)).to eq ["2","3","3","5"]
  end

  it 'deberia devolver un arreglo con 2 2 2 3 3 5 cuando descomponerNumerosPrimos 360' do
    factorizador = FactorizadorPrimo.new
  expect(factorizador.descomponerNumerosPrimos(360)).to eq ["2","2","2","3","3","5"]
  end

  it 'deberia devolver un arreglo con 2 cuando descomponerNumerosPrimos 2' do
    factorizador = FactorizadorPrimo.new
  expect(factorizador.descomponerNumerosPrimos(2)).to eq ["2"]
  end

  it 'deberia devolver un arreglo con 7 cuando descomponerNumerosPrimos 7' do
    factorizador = FactorizadorPrimo.new
  expect(factorizador.descomponerNumerosPrimos(7)).to eq ["7"]
  end


end

