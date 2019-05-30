require 'singleton'
class Envio	
	attr_accessor :codigo_envio, :volumen_metrico, :categoria_envio
	def initialize(codigo_envio, volumen_metrico, categoria_envio)
		@codigo_envio=codigo_envio
		@volumen_metrico=volumen_metrico
		@categoria_envio=categoria_envio
	end 	
	def calcular_costo_envio	
	end
	def dame_tipo_envio
	end
end
class EnvioMaritimo < Envio
  attr_accessor :razon_social
  def initialize(codigo_envio, volumen_metrico, categoria_envio, razon_social)
  	 super(codigo_envio, volumen_metrico, categoria_envio)
  	 @razon_social= razon_social
  end
  def calcular_costo_envio	
  	volumen_metrico*100+ volumen_metrico*categoria_envio*25 
  end
  def dame_tipo_envio
  	"Maritimo"
  end
end
class EnvioUltramarino < Envio
    attr_accessor :codigo_contratante, :nombre_legal
   def initialize(codigo_envio, volumen_metrico, categoria_envio, codigo_contratante, nombre_legal)
   	 super(codigo_envio, volumen_metrico, categoria_envio)
   	 @codigo_contratante=codigo_contratante
   	 @nombre_legal=nombre_legal
   end
   def calcular_costo_envio
   	  volumen_metrico*500 + volumen_metrico*10*categoria_envio*10
   end
   def dame_tipo_envio
  	"Ultramarino"
  end
end
class Administrador
	 include Singleton
	attr_accessor :arreglo_envios
	def initialize
		@arreglo_envios = Array.new # []
	end
	def registrar(envio)
		arreglo_envios.push(envio)
	end
	def calcular_costos_envios_marinos
		suma = 0 
		for p in arreglo_envios
		  if p.dame_tipo_envio=="Maritimo"
           suma = suma + p.calcular_costo_envio
          end
		end
		return suma
	end
end
adm = Administrador.instance
envio1 = EnvioMaritimo.new("100", 24, 3, "El pez gordo")
envio2 = EnvioUltramarino.new("200", 20, 4, 333, "Gloria")
envio3 = EnvioUltramarino.new("444", 10, 5, 4534, "Fenix")
adm.registrar(envio1)
adm.registrar(envio2)
adm.registrar(envio3)
puts "Costos Envios Maritimos: #{adm.calcular_costos_envios_marinos}"