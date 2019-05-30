
# Pregunta 1

# Una cadena de cine local va a lanzar un aplicativo móvil que permita a sus usuarios 
# comprar tanto las entradas de cine así como combos de gaseosa y canchita.
# La tabla de precios está en la siguiente tabla:

# 	Normal	Premium
# Martes	8.00	16.00
# Jueves	16.00	32.00
# Resto Días	12.00	24.00

# Para el caso de los combos se tienen los siguientes valores:

# 	Precio (S/.)
# Combo1	10.00
# Combo2	12.50
# Combo3	13.00
# Combo4	16.00
 
# Se pide lo siguiente:
# 1.	Dado un día de la semana y un tipo de entrada, determinar el precio a pagar por entrada.
# 2.	Dado un tipo de combo, determinar el precio a pagar.
# 3.	Si el cliente tiene la tarjeta de fidelización se le otorgará un descuento del 5% sobre el monto total a pagar. 
# Determinar el monto a pagar si un cliente quiere una entrada más combo.


def calcularPrecioEntrada(tipoEntrada, dia)
  if(tipoEntrada=="Normal")
    if(dia=="Martes")
      return 8.00
    elsif(dia=="Jueves")
      return 16.00
    elsif(dia=="RestoDias")
      return 12.00
    end
  elsif(tipoEntrada=="Premium")
    if(dia=="Martes")
      return 16.00
    elsif(dia=="Jueves")
      return 32.00
    elsif(dia=="RestoDias")
      return 24.00
    end
  end
end

def calcularPrecioCombo(combo)
  if(combo=="Combo1")
    return 10.00
    elsif (combo=="Combo2")
    return 12.50
    elsif(combo=="Combo3")
    return 13.00
    elsif(combo=="Combo4")
    return 16.00
  end
      
end

def calcularPrecioTotal(tipoEntrada, dia, tipoCombo, tieneTarjeta)
  if(tieneTarjeta)
    return (calcularPrecioCombo(tipoCombo) + calcularPrecioEntrada(tipoEntrada, dia))*0.95
  else
    return calcularPrecioCombo(tipoCombo)+calcularPrecioEntrada(tipoEntrada, dia)
  end
end

#--- zona de test ----

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts calcularPrecioTotal("Normal","Jueves", "Combo1",false) 
	puts calcularPrecioTotal("Normal","Jueves", "Combo3",true) 
	puts calcularPrecioTotal("Premium","Lunes", "Combo2",false)
  puts " "
  
end
test