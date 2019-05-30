class Profesor
	attr_accessor :dni, :nombre
	def initialize(dni, nombre)
		@dni, @nombre = dni, nombre		
	end
    def calcular_sueldo
    end
end
class ProfesorTiempoCompleto < Profesor
	attr_accessor :sueldoBruto, :porcentajeAFP
	def initialize(dni, nombre, sueldoBruto, porcentajeAFP)
		super(dni, nombre)
		@sueldoBruto = sueldoBruto
		@porcentajeAFP = porcentajeAFP		
	end
	def calcular_sueldo
		sueldoBruto - porcentajeAFP*sueldoBruto
    end
end
class ProfesorTiempoParcial < Profesor
	attr_accessor :horas, :tarifa_hora

    def initialize(dni, nombre, horas, tarifa_hora)
        super(dni, nombre)
        @horas, @tarifa_hora = horas, tarifa_hora
    end
	def calcular_sueldo	
        horas*tarifa_hora
    end    
end
class Administrador
   attr_accessor :arreglo_profesores
   def initialize
   	  @arreglo_profesores = [] # Array.new
   end
   def registrar(profesor)
   	  arreglo_profesores.push(profesor)
   end
   def imprimir_listado
   	  for p in arreglo_profesores
   	  	puts "#{p.nombre}  #{p.calcular_sueldo}"
   	  end
   end
end
p1 = ProfesorTiempoParcial.new("88888888","Alicia",35, 40)
puts p1.calcular_sueldo
p2 = ProfesorTiempoCompleto.new("99999999","Juan", 2500, 0.12)
puts p2.calcular_sueldo
adm = Administrador.new
adm.registrar(p1)
adm.registrar(p2)
adm.imprimir_listado