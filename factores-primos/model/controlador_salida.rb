class ControladorDeSalida

  def formatearPretty(numero, numeroDescompuesto, orden)
  	resultado = "" 
  	if orden.eql?("des")
  		numeroDescompuesto.reverse!
  	end
  	numeroDescompuesto.each do |numeroActual|
  	  resultado += "#{numeroActual}" + " "
    end
    return "Factores primos " + numero.to_s + ": " + resultado
  end

  def formatearQuiet (numeroDescompuesto)
  	resultado = "" 
  	numeroDescompuesto.reverse!
  	numeroDescompuesto.each do |numeroActual|
  	  resultado += "#{numeroActual}" + "\n"
    end
    return resultado
  end  

=begin
  def formatear (numero, formato, numeroFactorizado, orden)
  	resultado = "" 
  	case formato.downcase
  	  when "--format=pretty"
  	  	resultado = fomatearPretty(numero, numeroFactorizado, orden)
  	  when "--format=quiet"
  	  	resultado = formatearQuiet(numeroFactorizado, orden)
  	  else resultado = "Formato no aceptado. Las opciones posibles son: pretty o quiet."
  	end
    return resultado
  end  
=end
end