class FactoresPrimos

  def descomponerNumerosPrimos(numero)
    resultado = Array.new
	  if(numero % 2 == 0)
      for i in 2..numero
        while numero%i==0
    	    numero = numero / i
    	    resultado << i.to_s
    	  end	
      end
    else
  	  resultado[0] = numero.to_s
  	end
    resultado
  end
end