require 'rspec' 
require_relative '../model/analizador_de_argumentos'

describe 'analizador_de_argumentos' do

  it 'deberia devolver el numero a factorear' do
    analizador = AnalizadorDeArgumentos.new ["90", "fruta"]
  expect(analizador.numero).to eq 90
  end

  it 'deberia devolver el formato pretty cuando analizarArgumentos' do
    analizador = AnalizadorDeArgumentos.new ["90", "--format=pretty"]
    analizador.analizarArgumentos
  expect(analizador.formato).to eq "pretty"
  end

end