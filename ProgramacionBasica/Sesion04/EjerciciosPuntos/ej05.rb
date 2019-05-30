# Pregunta 05

# Una empresa de auto lavado está promocionando los nuevos paquetes de lavado para sus clientes fieles. Para esto ha promocionado las nuevas tarifas por el servicio de lavado:
 
# Modelo
# Precio
# Sedan
# 5.50
# Camioneta
# 7.90
# 4x4
# 10.00
# Van
# 13.90
 
# Adicionalmente el cliente puede solicitar que se haga un lavado interno y para ello se le agregan las siguientes tarifas:
 
# Modelo
# Adicional
# Sedan
# 2.50
# Camioneta
# 3.90
# 4x4
# 5.00
# Van
# 7.30
 
# Finalmente, si es la quinta vez que el cliente nos visita con el mismo vehículo entonces tiene un descuento de 15% sobre el valor final del servicio de lavado.
#  Se le solicita lo siguiente:
# Dado un modelo, mostrar el monto a pagar por el servicio de lavado básico.
# Dado un modelo, mostrar el monto a pagar por el servicio de lavado interno.
# Dado un modelo, poder calcular el valor final a pagar considerando si el cliente solicita el servicio de lavado interno y si es que se aplica el descuento por ser cliente frecuente. (se tendrá como input un valor boolean por si toma el servicio adicional o no y si tiene el descuento)


def calcularValorLavado(modelo)
    if(modelo=="Sedan")
        return 5.50
    elsif(modelo=="Camioneta")
        return 7.90
    elsif(modelo=="4x4")
        return 10.00
    elsif(modelo=="Van")
        return 13.90
    end
end

def calcularValorServicioAdicional(modelo)
    if(modelo=="Sedan")
        return 2.50
    elsif(modelo=="Camioneta")
        return 3.90
    elsif(modelo=="4x4")
        return 5.00
    elsif(modelo=="Van")
        return 7.30
    end
end

def calcularValorTotalPagar(modelo, adicional, quintavisita)
    
    cLavado = calcularValorLavado(modelo)
    cAdicional = calcularValorServicioAdicional(modelo)
    
    if(adicional == true)
        if(quintavisita == true)
            return (cLavado + cAdicional)*(1-0.15)
        else
            return (cLavado + cAdicional)
        end
    else
        if(quintavisita == true)
            return (cLavado)*(1-0.15)
        else
            return cLavado 
        end
    end
    
end

# #--- zona de test ----

# def test_calcularValorLavado
# 	print validate(5.50, calcularValorLavado("Sedan"))
#     print validate(10.00, calcularValorLavado("4x4"))
#     print validate(13.90, calcularValorLavado("Van"))
#     print validate(0.00, calcularValorLavado("Camion"))
# end

# def test_calcularValorServicioAdicional
# 	print validate(2.50, calcularValorServicioAdicional("Sedan"))
#     print validate(3.90, calcularValorServicioAdicional("Camioneta"))
#     print validate(5.00, calcularValorServicioAdicional("4x4"))
#     print validate(0.00, calcularValorServicioAdicional("Moto"))
# end

# def test_calcularValorTotalPagar
#     print validate(8.00, calcularValorTotalPagar("Sedan",true,false))
#     print validate(8.50, calcularValorTotalPagar("4x4",false,true))
#     print validate(18.02, calcularValorTotalPagar("Van",true,true))
#     print validate(7.90, calcularValorTotalPagar("Camioneta",false,false))
# end

# def validate (expected, value)
#  expected == value ? "." : "F"
# end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts calcularValorTotalPagar("Sedan",true,false)
  puts calcularValorTotalPagar("4x4",false,true)
  puts calcularValorTotalPagar("Van",true,true)
  puts calcularValorTotalPagar("Camioneta",false,false)
  puts " "
 
end

test
