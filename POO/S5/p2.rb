# Una empresa de carga naviera requiere un programa que le permita calcular los costos de los envíos. 
# Para ello existen dos categorías de envío: marítimos y ultramarítimos. 

# En el caso de los envíos marítimos se consigna:

# -Código de envío
# -Razón social del cliente
# -Volumen métrico
# -Categoría de envío (puede ser categoría 1, 2 o 3)

# En el caso de los envíos marinos el costo se calcula de la siguiente manera:

# Costo = Volumen métrico * 100 + (Volumen métrico * categoría de envío) * 25


# Para el caso de los envíos ultramarinos se consigna:

# -Código de envío
# -Código de la empresa contratante
# -Nombre del representante legal
# -Volumen métrico
# -Categoría de envío (puede ser categoría 3, 4 o 5)

# En el caso de los envíos marinos el costo se calcula de la siguiente manera:

# Costo = Volumen métrico * 500 + (Volumen métrico * 10 ) * (categoría de envío) * 10


# Se pide implementar las siguientes historias de usuario, considerando la implementación de Herencia y Polimorfismo:

# Envíos Marinos
# Como Jefe de Envíos
# Quiero Registrar a un envío marino
# De modo que luego pueda calcular el costo del mismo. 

# Envíos Ultramarinos
# Como Jefe de Envíos
# Quiero Registrar a un envío ultramarino
# De modo que luego pueda calcular el costo del mismo.

# PARTE I

# Crear los siguientes test unitarios:

# •	Envío marino debe crearse con los campos indicados 
# •	Envío marino debe calcular el costo total 
# •	Envío ultramarino debe crearse con los campos indicados 
# •	Envío ultramarino debe calcular el costo total 
# •	El Jefe de envíos debe registrar un envío marino con los campos indicado 
# •	El Jefe de envíos debe registrar un envío ultramarino con los campos indicado 
# •	El Jefe de envíos debe validar la duplicidad de código de envío al registrar un envío marino o ultramarino 
# •	El jefe de envío deba validar que ningún campo esté vacío al registrar un envío 
# •	El jefe de envíos debe recibir el cálculo del costo del envío al ingresar el código de envío 

class Envio
    attr_accessor :codigo_envio, :volumen_metrico, :categoria_envio
    def initialize(codigo_envio,volumen_metrico,categoria_envio)
        @codigo_envio, @volumen_metrico, @categoria_envio = codigo_envio, volumen_metrico, categoria_envio
    end
    def calcular_costo_envio()
    end
end

class EnvioMaritimo < Envio
    attr_accessor :razon_social
    def initialize(codigo_envio,volumen_metrico,categoria_envio,razon_social)
        super(codigo_envio,volumen_metrico,categoria_envio)
        @razon_social = razon_social
    end
    def calcular_costo_envio()
        volumen_metrico*100 + (volumen_metrico*categoria_envio)*25
    end
end

class EnvioUltramarino < Envio
    attr_accessor :codigo_contratante, :nombre_legal
    def initialize(codigo_envio,volumen_metrico,categoria_envio,codigo_contratante,nombre_legal)
        super(codigo_envio,volumen_metrico,categoria_envio)
        @codigo_contratante = codigo_contratante
        @nombre_legal=nombre_legal
    end
    
    def calcular_costo_envio()
        volumen_metrico*500 + (volumen_metrico*10)*(categoria_envio)*10
    end
end

class Administrador
    attr_accessor :arreglo_envios
    def initialize
        @arreglo_envios = []
    end
    def registrar (envio)
        if envio == []
            "El arreglo esta vacio"
        else
            arreglo_envios.push(envio)
        end
    end
    
    def calcular_total_costos_marinos()
        suma = 0
   	    for p in arreglo_envios
   	  	    if (p.categoria_envio == 1)
   	  	        suma = suma + p.calcular_costo_envio
   	  	    end
       	end
       	puts "Suma Total Costo Marino : #{suma}"
    end
    
    def calcular_total_costo_ultramarinos()
        suma = 0
   	    for p in arreglo_envios
   	  	    if (p.categoria_envio == 2)
   	  	        suma = suma + p.calcular_costo_envio
   	  	    end
       	end
       	puts "Suma Total Costo Marino : #{suma}"
    end
    
    def validar_duplicidad(codigo)
        suma = 0
   	    
   	    for p in arreglo_envios
   	  	    if (p.codigo_envio == codigo)
   	  	        suma = suma + 1
   	  	    end
       	end
       	
       	if (suma == 0)
       	    puts "No hay duplicidad"
       	else
       	    puts "La duplicidad de es de : #{suma}"
       	end
    end

end

n1 = EnvioMaritimo.new("1",100,1,"r1")
n2 = EnvioMaritimo.new("2",200,1,"r2")
n3 = EnvioMaritimo.new("6",100,1,"r3")
n4 = EnvioMaritimo.new("4",150,1,"r3")
n5 = EnvioUltramarino.new("5",100,2,"c1","r4")
n6 = EnvioUltramarino.new("6",100,2,"c1","r5")

adm = Administrador.new
adm.registrar(n1)
adm.registrar(n2)
adm.registrar(n3)
adm.registrar(n4)
adm.registrar(n5)
adm.registrar(n6)
adm.calcular_total_costos_marinos
adm.calcular_total_costo_ultramarinos
adm.validar_duplicidad("6")
