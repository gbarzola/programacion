# Pregunta 2

# La empresa de Transportes “El Choferazo” con RUC 20101010101 requiere un programa 
# para gestionar los datos de su flota de vehículos, y para realizar diversos cálculos 
# de los costos de mantenimiento y combustible.
# Todos los vehículos son identificados por número de placa, marca, modelo, ruta asignada y número de pasajeros.
# La ruta asignada puede ser:

# Ruta	Descripción	Kilometraje total
# LIM – ICA	Lima – Ica – Lima	600 Km
# LIM – CHI	Lima – Chimbote – Lima	900 Km
# LIM – TRU	Lima – Trujillo – Lima	1200 km

# (Considerar que a un vehículo se le asigna siempre la misma ruta).

# El costo de mantenimiento por viaje (refrigerio, limpieza, etc.) se calcula así (en soles):
# Mantenimiento por viaje= (Número de pasajeros) * 10.00

# Y el costo de combustible por viaje se calcula así (en soles):
# Costo de Combustible por viaje = (Kilometraje total de la ruta) * 14.00

# Los vehículos de la empresa se clasifican en: buses, cousters y cargueros.
# En el caso de los cargueros se precisa además la capacidad de carga (en toneladas). 
# Y, debido a esta carga adicional, a la fórmula de Costo de Combustible por viaje se le 
# adiciona 14 soles por cada tonelada de capacidad de carga.
# Y en el caso de las cousters, como son vehículos livianos, el costo de combustible tiene un descuento de 10%.

# Aplicando herencia y polimorfismo:
# a)	Desarrolle las clases requeridas y sus relaciones en Ruby 
# b)	Desarrolle un método que liste los vehículos de la empresa y que informe todos sus 
# atributos, costo de mantenimiento y costo de combustible por viaje. 
# c)	Desarrolle un método que solicite el número de placa y muestre los datos del vehículo,
# costo de mantenimiento y costo de combustible por viaje.
# d)	Desarrollo un método que muestre el total que la empresa gastará en mantenimiento
# y combustible en un mes, considerando que todos los vehículos realizan 15 viajes mensuales.


class Vehiculo
    
    attr_accessor :num_placa, :marca, :modelo, :ruta_asignada, :num_pasajeros
    
    def initialize(num_placa, marca, modelo, ruta_asignada, num_pasajeros)
        @num_placa,@marca,@modelo,@ruta_asignada,@num_pasajeros=num_placa,marca,modelo,ruta_asignada,num_pasajeros
    end

    def kilometraje_total
        if @ruta_asignada == "LIM-ICA"
            600
        elsif @ruta_asignada == "LIM-CHI"
            900
        else
            1200
        end
    end
    
    def mantenimiento_por_viaje
        @num_pasajeros*10
    end
    
    def costo_combustible
    end
end

class Bus < Vehiculo
    def initialize(num_placa, marca, modelo, ruta_asignada, num_pasajeros)
        super(num_placa, marca, modelo, ruta_asignada, num_pasajeros)
    end
    def costo_combustible
        kilometraje_total*14
    end
end

class Couster < Vehiculo
    def initialize(num_placa, marca, modelo, ruta_asignada, num_pasajeros)
        super(num_placa, marca, modelo, ruta_asignada, num_pasajeros)
    end
    def costo_combustible
        kilometraje_total*14*0.9
    end
end

class Carguero < Vehiculo
    attr_accessor :carga
    def initialize(num_placa, marca, modelo, ruta_asignada, num_pasajeros,carga)
        super(num_placa, marca, modelo, ruta_asignada, num_pasajeros)
        @carga = carga
    end
    def costo_combustible
        kilometraje_total*14 + carga*14
    end
end

class Administrador
   attr_accessor :arreglo_vehiculos
   def initialize
   	  @arreglo_vehiculos = [] # Array.new
   end
   
   def registrar(vehiculo)
   	  arreglo_vehiculos.push(vehiculo)
   end
   
   
   def imprimir_listado
        puts "Listado de Vehiculos:"
   	    for p in arreglo_vehiculos
   	  	    puts "#{p.num_placa}  #{p.marca} #{p.modelo} #{p.ruta_asignada} #{p.mantenimiento_por_viaje} #{p.costo_combustible}"
       	end
   end
   
    def busca_vehiculos_placa(placa)
        for p in arreglo_vehiculos
   	  	    if p.num_placa == placa
   	  	        puts "El auto con placa #{p.num_placa} es : #{p.marca} #{p.modelo} #{p.ruta_asignada} #{p.mantenimiento_por_viaje} #{p.costo_combustible}"
   	  	    end
       	end
    end
    
    
    def gasto_total_mantenimiento
        suma = 0
   	    for p in arreglo_vehiculos
   	  	    suma = suma + p.mantenimiento_por_viaje
       	end
       	puts "Suma Total por 15 viajes (1 mes) : S/.#{suma*15}"
   end
   
end

a1 = Carguero.new("8829888","Nissan","Modelo1","LIM-ICA",10,15)
a2 = Carguero.new("8888598","Wong","Cargater","LIM-CHI",20,10)
a3 = Carguero.new("8888888","Nissan","Wi","LIM-TRU",20,12)
a4 = Carguero.new("8348888","Toyota","Pick","LIM-ICA",20,15)
a5 = Carguero.new("8888811","Nissan","Pack","LIM-CHI",20,14)
a6 = Couster.new("7729888","Nissan","Modelo1","LIM-ICA",20)
a7 = Couster.new("8888598","Wong","Cargater","LIM-CHI",20)
a8 = Couster.new("7087888","Nissan","Wi","LIM-TRU",20)
a9 = Bus.new("8347738","Toyota","Pick","LIM-ICA",10)
a10 = Bus.new("7898081","Nissan","Pack","LIM-CHI",10)


adm = Administrador.new
adm.registrar(a1)
adm.registrar(a2)
adm.registrar(a3)
adm.registrar(a4)
adm.registrar(a5)
adm.registrar(a6)
adm.registrar(a7)
adm.registrar(a8)
adm.registrar(a9)
adm.registrar(a10)
adm.imprimir_listado
adm.busca_vehiculos_placa("8888811")
adm.gasto_total_mantenimiento