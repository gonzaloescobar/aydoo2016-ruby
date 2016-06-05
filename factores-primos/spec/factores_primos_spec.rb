require 'rspec' 
require_relative '../model/factores_primos'

describe 'factores_primos' do

  it 'should return 2 3 3 5 when descompose prime numbers of 90' do
    calculator = FactoresPrimos.new
    expect(calculator.breakPrimes(90)).to eq '2 3 3 5 '
  end

  it 'should return 2 2 2 3 3 5 when descompose prime numbers of 360' do
    calculator = FactoresPrimos.new
    expect(calculator.breakPrimes(360)).to eq "2 2 2 3 3 5 "
  end

  it 'should return 2 when descompose prime numbers of 2' do
    calculator = FactoresPrimos.new
    expect(calculator.breakPrimes(2)).to eq "2 "
  end

  it 'should return the original number when descompose prime numbers of number can not be broken' do
    calculator = FactoresPrimos.new
    expect(calculator.breakPrimes(3)).to eq "3 "
  end

end

