class ControladorDeSalida

  def formatearPretty(numero, numeroDescompuesto)
  	resultado = "" 
  	numeroDescompuesto.each do |i|
  	  resultado = resultado + "#{i}" + " "
    end
    return "Factores primos " + numero.to_s + ": " + resultado
  end 
end