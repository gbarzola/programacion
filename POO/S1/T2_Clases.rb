# Pregunta 1

# Una empresa naviera tiene problemas con las medidas internacionales de su almacén.
# Por ello necesita se desarrolle un programa que permita calcular el número máximo 
# de cajas con productos que pueden introducir en el almacén. Se supone que todas las
# cajas tienen las mismas medidas de largo, ancho y alto expresados en metros (por ejemplo 0.50mt de largo,
# 0.30mt de ancho y 0.05mt de alto.  El almacén tiene una capacidad de 1525 m3. 
# Desarrolle el programa que permita dar solución al problema planteado

class Caja
    
    def initialize largo,ancho,alto
        @largo = largo
        @ancho = ancho
        @alto = alto
    end
    
    def calcularCantidadCajas 
        (1525/(@largo*@ancho*@alto)).to_i
    end
    
end

def test
  puts "---------------------------"
  puts "Test de prueba de la Clase Cajas"
  puts "---------------------------"
  caja1 = Caja.new 0.5,0.3,0.5
  puts "**Cantidad de cajas**"
  puts caja1.calcularCantidadCajas
end

test


# Pregunta 2

# Definir el programa que tenga como datos de entrada
# el sueldo bruto mensual
# y la utilidad que recibe una persona durante un año, 
# se conoce que la persona percibe 14 sueldos al año. 
# El programa debe determinar el impuesto a la renta que
# debe pagar por concepto de quinta categoría.

# Para este problema considerar como dato el monto de la Unidad Impositiva
# Tributaria (UIT) de S/. 3,600.00 para el ejercicio fiscal 2012. 

# El monto del impuesto se calcula de la siguiente forma:
# El sueldo bruto mensual se multiplica por
# la cantidad de sueldos que percibe la persona al año. 
# A este cálculo se le debe añadir el monto percibido por concepto de utilidades. 
# Al resultado obtenido previamente se le debe restar
# la denominada deducción legal que consiste de siete (7) UIT, 
# el impuesto es el 21% del resultado obtenido	

class Trabajador
    
    def initialize sueldo,utilidad
        @sueldo = sueldo
        @utilidad = utilidad
    end
    
    def calculaImpuesto 
        cantidadSueldo = @sueldo*14
        cantidadConUtilidad = cantidadSueldo + @utilidad
        cantidadNeta = cantidadConUtilidad - 7*3600
        impuestoObtenido = 0.21*cantidadNeta
        
        return impuestoObtenido.to_i
    end
    
end

def test
  puts "---------------------------"
  puts "Test de prueba de la Clase trabajador"
  puts "---------------------------"
  trabajador = Trabajador.new 4500,10
  puts "**Impuesto a pagar al año**"
  puts trabajador.calculaImpuesto
end

test


# Pregunta 3

# La universidad está organizando 10 de Talleres de programación. 
# Para incentivar a los alumnos a matricularse, está otorgando descuentos por cantidad de talleres 
# a matricularse por alumno, ademas descuento por llevar a referidos (son alumnos que dan el nombre del alumno 
# que les recomedó llevar el taller).
# Hay un descuento por referidos de acuerdo a la tabla, ademas si lleva 9 o 10 referidos, le hacen un descuento adicional de 20 soles, 
# sobre el importe descontado. Determinar el importe a pagar por la matricula a uno o más talleres.
# El precio de cada taller es único. El cuadro de descuento por cantidad de talleres y de referidios es la siguiente:
 
# Cantidad de referidos	Descuento
# 2 a 5	7 %
# 6 a 8	10 %
# 9 a 10	12 %
 	 
 
# Cantidad de Talleres	Descuento
# 2 a 4	5 %
# 5 a 7	10 %
# 8 a 10 	15 %
 
# Todos los descuentos se aplican al precio original. 
 
# Se le solicita lo siguiente:
# a.	Calculo del descuento por talleres matriculados                                
# b.	Calculo por descuento por cantidad de referidos.                               
# Calculo del costo por talleres matriculados            


class Taller
    
    def initialize referidos,numeroTalleres,precio
        @referidos = referidos
        @numeroTalleres = numeroTalleres
        @precio = precio
    end
    
    def calcula_descuento_referidos 
        if @referidos>=2 && @referidos<=5
            return 0.7*@numeroTalleres
        elsif @referidos>=6 && @referidos<=8
            return 0.10*@numeroTalleres
        else @referidos>=9 && @referidos<=10
            return 0.12*@numeroTalleres + 20
        end
    end
    
    def calcula_descuento_talleres
        if @numeroTalleres>=2 && @numeroTalleres<=4
            return 0.5*@numeroTalleres
        elsif @numeroTalleres>=5 && @numeroTalleres<=7
            return 0.10*@numeroTalleres
        else @numeroTalleres>=8 && @numeroTalleres<=10
            return 0.15*@numeroTalleres
        end
    end
    
    def calcula_costos
        @precio*@numeroTalleres - (calcula_descuento_referidos + calcula_descuento_talleres)
    end
end
    
def test
  puts "---------------------------"
  puts "Test de prueba de la Clase Talleres"
  puts "---------------------------"
  talleres = Taller.new 7,6,1000
  puts "**Descuento Referidos**"
  puts talleres.calcula_descuento_referidos
  puts "**Descuento Talleres**"
  puts talleres.calcula_descuento_talleres
  puts "**Costo Total**"
  puts talleres.calcula_costos
end

test




# Pregunta 4

# La academia nacional de idiomas programa todos los meses dos exámenes uno escrito y otro oral. 
# Estos exámenes se utilizan para determinar el nivel en el que se encuentran los alumnos con el 
# propósito de determinar el nivel y con ello el costo del curso. 
# Para ello, los niveles se determinan de acuerdo al siguiente cuadro:

# NIVEL	    Examen escrito	    Examen oral
# Nivel 3	Mayor a 95 puntos 	Mayor a 75 puntos
# Nivel 2	Mayor a 95 puntos	Menor igual a 75 puntos
# Nivel 1	Menor igual a 95 puntos	Cualquier puntaje
 
# Dependiendo del nivel asignado se determina el precio del programa mensual de acuerdo a lo siguiente:
# •	Nivel 1 el precio es de S/.150.00
# •	Nivel 2 el precio es de S/.250.00
# •	Nivel 3 el precio es de S/.400.00
 
# Desarrollar un subprograma que permita determinar el Nivel del alumno y otro subprograma que determine el precio a cobrar.

class ExamenIngles
    
    def initialize examenE,examenO
        @examenE = examenE
        @examenO = examenO
    end
    
    def calculaNivel
        if @examenE>95 && @examenO>75
           return "Nivel 3"
        elsif @examenE>95 && @examenO<=75
           return "Nivel 2"
        else @examenE<=95
           return "Nivel 1"
        end
    end

    def precio
        if calculaNivel == "Nivel 3"
            return 150
        elsif calculaNivel == "Nivel 2"
            return 250
        else    
            return 400
        end
    end
end

def test
  puts "---------------------------"
  puts "Test de prueba de la Clase Examen"
  puts "---------------------------"
  examen = ExamenIngles.new 100,100
  puts "**Nivel**"
  puts examen.calculaNivel
  puts "**Precio**"
  puts examen.precio
end

test

