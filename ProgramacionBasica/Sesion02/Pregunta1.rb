
def determinarcuota(precio)

end

#--programa principal
#--- zona de test ----
def test_determinarcuota
    print validate(565.25, determinarcuota(15000.00))
	print validate(960.93, determinarcuota(25500.00))
	print validate(1130.50, determinarcuota(30000.00))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarcuota
  puts " "
end
test
