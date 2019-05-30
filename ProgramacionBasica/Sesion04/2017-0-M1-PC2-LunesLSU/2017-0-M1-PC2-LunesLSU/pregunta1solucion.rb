def calcularDsctoxTaller(precio, cantidad)
	descuento=0
	if cantidad >=2 and cantidad <=4
		descuento= 0.05 * precio
	end
	if cantidad >=5 and cantidad <=7
		descuento= 0.10 * precio
	end
	if cantidad >=8 and cantidad <=10
		descuento= 0.15 * precio
	end
    return descuento
end

def calcularDsctoxReferido(precio, nreferidos)
	descuento=0
	if nreferidos>=2 and nreferidos<=5
		descuento = 0.07 * precio
	end
	if nreferidos>=6 and nreferidos<=8
		descuento = 0.10 * precio
	end	
	if nreferidos==9 or nreferidos==10
		descuento = 0.12 * precio
		descuento = descuento + 20
	end
	return descuento
end

def calcularCostoxTalleres(precio, cantidad, nreferidos)
	descuento1=calcularDsctoxTaller(precio, cantidad)
	descuento2=calcularDsctoxReferido(precio, nreferidos)
    precio = precio - descuento1 - descuento2
    return precio
end

#--- zona de test ----

def test_calcularDsctoxTaller
    print validate(0.00, calcularDsctoxTaller(120,1)) 
	print validate(6.00, calcularDsctoxTaller(120,4)) 
	print validate(15.00, calcularDsctoxTaller(100,9)) 
end

def test_ccalcularDsctoxReferido
    print validate(0.00, calcularDsctoxReferido(120,1)) 
	print validate(8.40, calcularDsctoxReferido(120,5)) 
	print validate(32.00, calcularDsctoxReferido(100,9)) 
end

def test_calcularCostoxTalleres
	print validate(120.00, calcularCostoxTalleres(120,1,1))
	print validate(99.60, calcularCostoxTalleres(120,5,4))
	print validate(53.00, calcularCostoxTalleres(100,9,9))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularDsctoxTaller
  puts test_ccalcularDsctoxReferido
  puts test_calcularCostoxTalleres
  puts " "
end
test