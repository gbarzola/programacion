
# Modelo
# Modelo crea reglas de negocio

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
	def obtener_lista_todos
	    return arreglo_envios
	end
end

class Vista
    def mostrar(m)
        puts m
    end
    
    def mostrar_costo(costo)
        puts "Costo total de envios maritimos es #{costo}"
    end
    
    def imprimir(arreglo)
        puts "***Listado de envios***"
        for p in arreglo
            puts "#{p.codigo_envio} #{p.calcular_costo_envio} #{p.dame_tipo_envio}"
        end
        
    end
end

class Factory 
    def self.dame_objeto(tipo, *arg)
        case tipo
            when "M"
                EnvioMaritimo.new(arg[0],arg[1],arg[2],arg[3])
            when "U"
                EnvioUltramarino.new(arg[0],arg[1],arg[2],arg[3],arg[4])
        end
    end
end

# Controlador

class Controlador
    attr_accessor :modelo, :vista
    def initialize (modelo, vista)
        @modelo, @vista = modelo, vista
    end
    # Factory te genera objetos :
    def registrar_envio(tipo,*arg)
        envio = Factory.dame_objeto(tipo,*arg)
        modelo.registrar(envio)
        vista.mostrar("Envio registrado")
    end
    
    def mostrar_costos_envios_marinos
        costo = modelo.calcular_costos_envios_marinos
        vista.mostrar_costo(costo)
    end
    
    def imprimir_reporte_todos_envios
        arreglo = modelo.obtener_lista_todos
        vista.imprimir(arreglo)
    end
end

adm = Administrador.instance
vista = Vista.new
controlador = Controlador.new(adm,vista)
controlador.registrar_envio("M","100", 24, 3, "El pez gordo")
controlador.registrar_envio("U","200", 20, 4, 333, "Gloria")
controlador.registrar_envio("U","444", 10, 5, 4534, "Fenix")
controlador.mostrar_costos_envios_marinos
controlador.imprimir_reporte_todos_envios