
# P01
# Se requiere un programa que calcule la nota final de un curso con la siguiente fórmula
# Promedio Final = PC01 * 0.2 + PC02 * 0.2 +	EP * 0.2 + EF * 0.4

 
def promedio_final(pc01, pc02, ep, ef)
  promFinal = pc01*0.2 + pc02*0.2 + ep*0.2 + ef*0.4
  return promFinal
end

# P02
# Se requiere un programa que calcule la cantidad de billetes de 20 soles que se necesitan para entregar una cantidad de dinero
# en billetes de esa denominación. Por ejemplo si envío 350 soles me dirá que se necesitan 17
# billetes (la parte decimal se ignora)

def cantidad_de_billetes(monto)
    return monto/20.round(0)
end

# P03
# Se requiere un programa que calcule el área de un círculo tomando en cuenta que a = PI * r2; r2 = radio al cuadrado; Para PI usar la constante de Ruby Math::PI

def area_circulo(radio)
  area = Math::PI*radio*radio
  return area.round(2)
  
end

# P04
#   Desarrollar un programa que permita crear el texto  "Soy <<nombre>> y mi nota es <<nota>>"
#   Por ejemplo si el nombre es Carlos y la nota es 17 el mensaje será  "Soy Carlos y mi nota es 17"
#   Tener en cuenta que el texto debe ser exacto para que el test pase

def texto(nombre, nota)
    return "Soy " + nombre.to_s + " y mi nota es " + nota.to_s
end

def test
   
  puts "Promedio final del curso"
  puts "---------------------------"
  puts promedio_final(15,20,11,11)
  puts "---------------------------"
  puts " "
  puts "Cantidad de billetes"
  puts "---------------------------"
  puts cantidad_de_billetes(350)
  puts "---------------------------"
  puts " "
  puts "Area del Circulo"
  puts "---------------------------"
  puts area_circulo(10)
  puts "---------------------------"
  puts " "
  puts "Mensaje del texto"
  puts "---------------------------"
  puts texto('gerardo',20)
  puts "---------------------------"
  puts " "
end
test


