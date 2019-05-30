

def entrada2(edad)
    precio = 0
    if (edad >= 0 && edad <= 10)
        precio = 15.00
    elsif (edad >= 11 && edad <= 64)
        precio = 25.00
    elsif (edad > 64)
        precio = 20.00
    end
    return precio
end

# puts "El precio de la entrada es " + entrada2(33).to_s


def pagoPizza(tamanio,sabor)
    precio = 0.0
    if(tamanio == "familiar")
        if (sabor == "americana")
            precio = 39.99
        elsif (sabor == "hawaiana")
            precio = 42.50
        elsif (sabor == "alemana")
            precio = 48.50
        end
    elsif (tamanio == "personal")
        if (sabor == "americana")
            precio = 14.00
        elsif (sabor == "hawaiana")
            precio = 15.50
        elsif (sabor == "alemana")
            precio = 17.50
        end
    end
end

# puts "El precio de la pizza es " + pagoPizza("familiar","alemana").to_s
  
def defineSueldoVendedor(monto)
    sueldoBase = 1500
    comision = 0.0
    if(monto >= 0 && monto <=1999)
        comision = 0.00*monto
    elsif(monto >= 2000 && monto <=10000)
        comision = (0.03*monto).round(2)
    elsif(monto >= 10001 && monto <=20000)
        comision = (0.06*monto).round(2)
    elsif(monto >= 20001)
        comision = (0.1*monto).round(2)
    end
    return (sueldoBase + comision).round(2)
end

#puts "El sueldo del vendedor es " + defineSueldoVendedor(22000).to_s

def cobroViaje(tipoViaje, numPersonas, distancia)
    cobro = 0.0
    if (tipoViaje == "Distrital")
        if (numPersonas >= 1 && numPersonas <= 5 && distancia%10 == 0)
            cobro = 0.60 * distancia/10
        elsif (numPersonas >= 1 && numPersonas <= 5 && distancia%10 != 0)
            cobro = 0.60 * distancia/10 + 0.60
        elsif (numPersonas >= 6 && numPersonas <= 10 && distancia%10 == 0)
            cobro = 0.75 * distancia/10
        elsif (numPersonas >= 6 && numPersonas <= 10 && distancia%10 != 0)
            cobro = 0.75 * distancia/10 + 0.75
        end
    elsif (tipoViaje == "Provincial")
        if (numPersonas >= 1 && numPersonas <= 5 && distancia%10 == 0)
            cobro = 0.95 * distancia/10
        elsif (numPersonas >= 1 && numPersonas <= 5 && distancia%10 != 0)
            cobro = 0.95 * distancia/10 + 0.95
        elsif (numPersonas >= 6 && numPersonas <= 10 && distancia%10 == 0)
            cobro = 1.25 * distancia/10
        elsif (numPersonas >= 6 && numPersonas <= 10 && distancia%10 != 0)
            cobro = 1.25 * distancia/10 + 1.25
        end
    elsif (tipoViaje == "Departamental")
        if (numPersonas >= 1 && numPersonas <= 5 && distancia%10 == 0)
            cobro = 1.95 * distancia/10
        elsif (numPersonas >= 1 && numPersonas <= 5 && distancia%10 != 0)
            cobro = 1.95 * distancia/10 + 1.95
        elsif (numPersonas >= 6 && numPersonas <= 10 && distancia%10 == 0)
            cobro = 2.25 * distancia/10
        elsif (numPersonas >= 6 && numPersonas <= 10 && distancia%10 != 0)
            cobro = 2.25 * distancia/10 + 2.25
        end    
    end
    return cobro
end

puts "El monto a cobrar es " + cobroViaje("Distrital", 4 ,55).to_s