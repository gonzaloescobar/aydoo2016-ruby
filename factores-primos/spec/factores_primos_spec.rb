require 'rspec' 
require_relative '../model/factores_primos'

describe 'factores_primos' do

  it 'should return 2 3 3 5 when descompose prime numbers of 90' do
    calculator = FactoresPrimos.new
    expect(calculator.breakPrimes(90)).to eq '2 3 3 5 '
  end

end

