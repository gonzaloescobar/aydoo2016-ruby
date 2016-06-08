class ControladorDeSalida

  def formatearPretty(numero, numeroDescompuesto)
  	resultado = "" 
  	numeroDescompuesto.each do |numeroActual|
  	  resultado += "#{numeroActual}" + " "
    end
    return "Factores primos " + numero.to_s + ": " + resultado
  end

  def formatearQuiet (numeroDescompuesto)
  	resultado = "" 
  	numeroDescompuesto.each do |numeroActual|
  	  resultado += "#{numeroActual}" + "\n"
    end
    return resultado
  end  
end