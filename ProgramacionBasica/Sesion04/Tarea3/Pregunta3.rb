def calcularPrecioCafe(tipoCafe, cantidad)
    if(tipoCafe=="Expreso")
        if(cantidad>=100 && cantidad<=150)
            return 1.80
        elsif (cantidad>=151 && cantidad<=250)
            return 1.65
        elsif (cantidad>251)
	        return 1.55
	    end
	elsif (tipoCafe=="Americano")
	    if(cantidad>=100 && cantidad<=150)
            return 1.85
        elsif (cantidad>=151 && cantidad<=250)
            return 1.70
        elsif (cantidad>251)
	        return 1.60
	    end
	elsif (tipoCafe=="ConLeche")
	    if(cantidad>=100 && cantidad<=150)
            return 1.90
        elsif (cantidad>=151 && cantidad<=250)
            return 1.80
        elsif (cantidad>251)
	        return 1.70
	    end     
	end
end

def calcularPrecioAlquiler(cantidad)
    if(cantidad==10)
        return 90.00
    elsif (cantidad==20)
        return 165.00    
    elsif (cantidad==30)
        return 250.00
    end        
end

#--- zona de test ----


def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts calcularPrecioCafe("Expreso", 100)
  puts calcularPrecioAlquiler(100)
  puts " "
  
end
test