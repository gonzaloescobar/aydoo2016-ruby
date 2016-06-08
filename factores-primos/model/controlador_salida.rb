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

  def formatearQuiet (numeroDescompuesto, orden)
  	resultado = "" 
  	if orden.eql?("des") || orden.eql?("")
  	  numeroDescompuesto.reverse!
  	end
  	numeroDescompuesto.each do |numeroActual|
  	  resultado += "#{numeroActual}" + "\n"
    end
    return resultado
  end  

  def imprimir_en_consola textoAImprimir
    print "#{textoAImprimir}\n"
  end

  def imprimir_en_archivo (nombreDeArchivo, textoAImprimir)
    File.open(nombreDeArchivo, 'w') do |f|
      f.puts textoAImprimir
    end
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