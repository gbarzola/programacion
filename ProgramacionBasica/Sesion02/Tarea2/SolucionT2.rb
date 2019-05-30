
#Pregunta 1

# Una empresa de ventas necesita un programa que le permite calcular las boletas de pago de sus vendedores. 
# Un vendedor que tiene su sueldo base, recibe una comisión del 10% del total de las ventas del mes. 
# Si el las ventas se registras por semanas (4 ventas al mes) se quiere saber cuánto ganará en un mes. 
# Tener en cuenta que se le aplica un descuento del 15% por concepto de cargas familiares.

def determinarsueldo(sueldobasico,ventas1,ventas2,ventas3,ventas4)
    comisionMes = 0.10 * (ventas1 + ventas2 + ventas3 + ventas4)
    descuentoCargasFam = 0.15 * (sueldobasico + comisionMes)
    return sueldobasico + comisionMes - descuentoCargasFam
    
end

#Pregunta 2
# Existe un “número de la suerte” que toda persona tiene y que está en función de la fecha de su nacimiento. 
# Es así que el número de la suerte de una persona que nació el 31/07/1970 será el siguiente:
#-	31+07+1970=2008 (se suma el día, mes y año de la fecha)
#-	2+0+0+8= 10 (se suman los dígitos de la suma anterior)
#-	10 es el número de la suerte
# Desarrollar un programa para determinar el número de la suerte de cualquier persona.

def calcularnumero(dia,mes,año)
    sumaFecha=dia+mes+año
    
    d1 = sumaFecha %  10
	d2 = sumaFecha %  100  /  10
	d3 = sumaFecha %  1000  /  100
	d4 = sumaFecha %  10000  /  1000
        
    return d1+d2+d3+d4
end


#Pregunta 3

# Se requiere obtener el área de la figura de la forma A. 
# Para resolver este problema se puede partir de que está formada por tres figuras: 
# dos triángulos rectángulos, con H como hipotenusa y R como uno de los catetos, que también es el radio 
# de la otra figura, una semicircunferencia que forma la parte circular (ver forma B). 
# Desarrolle el problema con un programa donde tiene como datos de entrada R y H.

def calculararea(r,h)
    return (Math::PI*r*r/2 + r*(h*h-r*r)**0.5).round(2)
end

#Pregunta 4

# Un productor de leche lleva el registro de lo que produce en litros, pero cuando entrega le pagan en galones.
# Realice un programa que ayude al productor a saber cuánto recibirá por la entrega de su producción de un día (1 galón = 3.785 litros).
# Los datos de entrada con la cantidad de leche producida en un día y precio por galón que le pagan.

def calcularganancia(litros,precio)
    return (litros/3.785*precio).round(2)
end

def test
   
  puts "Determinar sueldo básico"
  puts "---------------------------"
  puts determinarsueldo(800,500,1500,5000,2000)
  puts "---------------------------"
  puts " "
  puts "Calcular numero"
  puts "---------------------------"
  puts calcularnumero(31,07,1970)
  puts "---------------------------"
  puts " "
  puts "Calcular area"
  puts "---------------------------"
  puts calculararea(10,100)
  puts "---------------------------"
  puts " "
  puts "Ganancia de la venta de leche en galones"
  puts "---------------------------"
  puts calcularganancia(100,10)
  puts "---------------------------"
  puts " "
end
test
