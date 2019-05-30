# Pregunta 1
# Desarrollar una clase en ruby que permita definir uno o más círculos 
# y que tenga las responsabilidades de: calcular el área, calcular el perímetro.

class Circulo
    
    def initialize radio
        @radio = radio
    end
    
    def calcularArea 
        Math::PI*@radio*@radio
    end
    
    def calcularPerimetro
        2*Math::PI*@radio
    end
    
end

def test
  puts "---------------------------"
  puts "Test de prueba de la Clase Circulo"
  puts "---------------------------"
  circulo1 = Circulo.new 15
  puts "**Area**"
  puts circulo1.calcularArea.round(2)
  puts "**Perimetro**"
  puts circulo1.calcularPerimetro.round(2)
end

test


# Pregunta 2
# Se requiere un programa que permita a una empresa constructora determinar la
# cantidad de pintura que requieren las paredes de un cuarto rectangular.
# Para ello se pide el largo, ancho y alto del cuarto y con esos datos 
# se quiere saber cuántos galones de pintura se requieren tomando en cuenta que
# se pueden pintar 58 metros cuadrados por cada galón.
# Todas las habitaciones tienen dos ventanas de un metro por un metro y una puerta 
# de un metro de ancho por dos de alto.
# Tanto ventanas como puertas se deberán descontar de los metros cuadrados a pintar. 

class PintarCuarto
    
    def initialize largo,ancho,alto
        @largo = largo
        @ancho = ancho
        @alto = alto
    end
    
    def calcularGalones 
        
        areaTotal = @largo*@alto*2 + @ancho*@alto*2
        areaVentanas = 2*1*1
        areaPuerta = 1*1*2
        
        return (areaTotal - areaVentanas - areaPuerta)/58
        
    end
    
end

def test
  puts "---------------------------"
  puts "Test de prueba de la Clase PintarCuarto"
  puts "---------------------------"
  cuarto = PintarCuarto.new 400,300,200
  puts "**Cantidad de Galones**"
  puts cuarto.calcularGalones
end

test


# Pregunta 3
# Desarrolle una clase que permita definir a un alumno de un curso de inglés.
# El alumno se registrará con su nombre y apellido, edad, género, teléfono y 
# nivel de inglés que puede ser básico, intermedio y avanzado. 
# La clase tendrá como responsabilidad poder mostrar los datos completos del alumno. 


class DatosAlumno

    def initialize nombre,apellido,edad,genero,telefono,nivel
        @nombre = nombre
        @apellido = apellido
        @edad = edad
        @genero = genero
        @telefono = telefono
        @nivel = nivel
        
    end
    
    def mostrarDatos 
        array = Array.new
        array.push(@nombre)
        array.push(@apellido)
        array.push(@edad)
        array.push(@genero)
        array.push(@telefono)
        array.push(@nivel)
        
        return array
    end
    
end

def test
  puts "---------------------------"
  puts "Test de prueba de la Clase Datos Alumno"
  puts "---------------------------"
  alumno = DatosAlumno.new "Gerardo","Barzola",27,"masculino",995124687,"intermedio"
  puts "** Datos **"
  puts "Nombre: #{alumno.mostrarDatos[0].to_s}"
  puts "Apellido : #{alumno.mostrarDatos[1].to_s}"   
  puts "Edad : " + alumno.mostrarDatos[2].to_s  
  puts "Sexo : " + alumno.mostrarDatos[3].to_s  
  puts "Telefono : " + alumno.mostrarDatos[4].to_s
  puts "Nivel ingles: " + alumno.mostrarDatos[5].to_s
end

test
