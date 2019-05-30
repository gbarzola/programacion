def calcularDsctoxTaller(precio, cantidad)

end

def calcularDsctoxReferido(precio, nreferidos)

end

def calcularCostoxTalleres(precio, cantidad, nreferidos)

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