
def calcularPrecioBebida(bebida)
    if(bebida="Gaseosa")
        return 2
    elsif (bebida="Chicha")
        return 2.50
    elsif (bebida="Limonada")
        return 3.00
    else (bebida="Cerveza")
        return 6.00
    end
	 
end

def calcularPrecioComida(tipoPlato, tamanioPlato)
    if(tamanioPlato="Ligero")
        if(tipoPlato="Criolla")
            return 8.00
        elsif (tipoPlato="Pachamanca")
            return 9.50
        else (tipoPlato="Selvatica")
	        return 8.90
	    end
	elsif(tamanioPlato="Mediano")
        if(tipoPlato="Criolla")
            return 12.00
        elsif (tipoPlato="Pachamanca")
            return 14.00
        else (tipoPlato="Selvatica")
	        return 13.00
	    end
	else(tamanioPlato="Contundenete")
        if(tipoPlato="Criolla")
            return 12.00
        elsif (tipoPlato="Pachamanca")
            return 14.00
        else (tipoPlato="Selvatica")
	        return 13.00
	    end
	
	end
	
end

def calcularAccesoDescuento(bebida, tipoPlato, tamanioPlato)
 
end

#--- zona de test ----

def test_calcularPrecioBebida
    print validate(2.00, calcularPrecioBebida("Gaseosa")) 
	print validate(2.50, calcularPrecioBebida("Chicha")) 
	print validate(3.00, calcularPrecioBebida("Limonada")) 
end

def test_calcularPrecioComida
    print validate(8.00, calcularPrecioComida("Criolla", "Ligero")) 
	print validate(14.00, calcularPrecioComida("Pachamanca", "Mediano")) 
	print validate(13.00, calcularPrecioComida("Selvatica", "Mediano")) 
	print validate(17.50, calcularPrecioComida("Pachamanca", "Contundente")) 
end

def test_calcularAccesoDescuento
    print validate(true, calcularAccesoDescuento("Limonada","Pachamanca", "Mediano")) 
	print validate(false, calcularAccesoDescuento("Gaseosa","Selvatica", "Ligero")) 
	print validate(false, calcularAccesoDescuento("Cerveza","Criolla", "Ligero")) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPrecioBebida
  test_calcularPrecioComida
  test_calcularAccesoDescuento
  puts " "
  
end
test