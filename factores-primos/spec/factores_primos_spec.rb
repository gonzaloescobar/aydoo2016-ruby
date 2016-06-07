require 'rspec' 
require_relative '../model/factores_primos'

describe 'factores_primos' do

  it 'deberia devolver un arreglo con 2 3 3 5 cuando descomponerNumerosPrimos 90' do
    factorizador = FactoresPrimos.new
  expect(factorizador.descomponerNumerosPrimos(90)).to eq ["2","3","3","5"]
  end

  it 'deberia devolver un arreglo con 2 2 2 3 3 5 cuando descomponerNumerosPrimos 360' do
    factorizador = FactoresPrimos.new
  expect(factorizador.descomponerNumerosPrimos(360)).to eq ["2","2","2","3","3","5"]
  end

  it 'deberia devolver un arreglo con 2 cuando descomponerNumerosPrimos 2' do
    factorizador = FactoresPrimos.new
  expect(factorizador.descomponerNumerosPrimos(2)).to eq ["2"]
  end

  it 'deberia devolver un arreglo con 7 cuando descomponerNumerosPrimos 7' do
    factorizador = FactoresPrimos.new
  expect(factorizador.descomponerNumerosPrimos(7)).to eq ["7"]
  end


end

