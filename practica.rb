# El circo Du Soleil estrena su temporada en Lima, las entradas que ofrece son de diferentes precios, de acuerdo a la ubicación de los asientos, además tiene un convenio con un banco que permite que sus clientes compren entradas con diferentes porcentajes de descuento. Todas las compras realizadas antes del día 10, tienen un descuento adicional del 2% sobre el precio original. La única que no tiene descuento es Signos. 
# El cuadro de precios y descuento es el siguiente:
# Ubicación	Precio (S/.)	Descuento
# Jet Set	880	20%
# Cupula	484	18%
# Suenho	396	15%
# Vitaminas	176	12%
# Signos	33	0%

# Se le solicita lo siguiente:
# a.	Calculo del precio por tipo de ubicación				(2 puntos)
# b.	Calculo del descuento por tipo de ubicación				(3 puntos)
# c.	Calculo por descuento por fecha de compra				(2 puntos)
# d.	Calculo del importe a pagar por una entrada			(3 puntos)

def calculaPrecio(ubicacion)
    if(ubicacion =="JetSet")
        return 880
    elsif(ubicacion =="Cupula")
        return 484
    elsif(ubicacion =="Suenho")
        return 396
    elsif(ubicacion =="Vitaminas")
        return 176
    elsif(ubicacion =="Signos")
        return 33
    end
end

def calculaDescuento(ubicacion)
    if(ubicacion =="JetSet")
        return 0.20
    elsif(ubicacion =="Cupula")
        return 0.18
    elsif(ubicacion =="Suenho")
        return 0.15
    elsif(ubicacion =="Vitaminas")
        return 0.12
    elsif(ubicacion =="Signos")
        return 0
    end
end

def calculaDescuentoSegunFecha(fecha)
    if(fecha < 10 && fecha >= 1)
        return 0.02
    else
        return 0
    end
end

def importePagar(ubicacion, fecha)
    
    desPrecioOriginalFecha = calculaPrecio(ubicacion)*calculaDescuentoSegunFecha(fecha)
    desSegunUbicacion = calculaPrecio(ubicacion)*calculaDescuento(ubicacion)
    
    # Si es signos no debe tener descuento segun Fecha
    if(ubicacion == "Signos")
        return calculaPrecio(ubicacion) - desSegunUbicacion
    else
        return calculaPrecio(ubicacion) - desSegunUbicacion - desPrecioOriginalFecha    
    end
    
    
    
    
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts importePagar("JetSet",9)
  puts importePagar("Cupula",10)    
  puts importePagar("Suenho",16)
  puts importePagar("Vitaminas",31)
  puts importePagar("Signos",2)
  puts " "
end

test