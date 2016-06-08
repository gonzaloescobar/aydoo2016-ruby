class AnalizadorDeArgumentos

  attr_accessor :argumentos
  attr_accessor :numero
  attr_accessor :formato
  attr_accessor :orden
  attr_accessor :nombreDeArchivo

  def initialize(argumentos)
    @numero = argumentos[0].to_i
    @argumentos = argumentos
  end

  def analizarArgumentos
    @argumentos.each do |argumentoActual|
      if argumentoActual.start_with?("--format=")
      	@formato = (argumentoActual.partition('=')).last.downcase
      end
      if argumentoActual.start_with?("--sort:")
      	@orden = argumentoActual.partition(':').last.downcase
      end
      if argumentoActual.start_with?("--output-file=")
      	@nombreDeArchivo = argumentoActual.partition('=').last.downcase
      end		
    end	
  end 
  

end