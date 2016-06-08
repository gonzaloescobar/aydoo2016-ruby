class Programa

require_relative '../model/factorizador_primo'
require_relative '../model/controlador_salida'
require_relative '../model/analizador_de_argumentos'

  analizador = AnalizadorDeArgumentos.new ARGV
  factoresPrimos = FactorizadorPrimo.new
  salida = ControladorDeSalida.new

  analizador.analizarArgumentos
  numeroFactorizado = factoresPrimos.descomponerNumerosPrimos(analizador.numero)
  resultadoFormateado = salida.formatear(analizador.numero, analizador.formato, numeroFactorizado, analizador.orden)

  if analizador.nombreDeArchivo != ""
    salida.imprimir_en_archivo(analizador.nombreDeArchivo, resultadoFormateado)
  else
  	salida.imprimir_en_consola resultadoFormateado
  end

end