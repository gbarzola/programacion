def determinarsueldo(sueldobasico,ventas1,ventas2,ventas3,ventas4)

end

#--- zona de test ----

def test_determinarsueldo
    print validate(2677.5, determinarsueldo(1500.00,5000.00,2000.0,1500.0,8000.0))
    print validate(3442.5, determinarsueldo(2500.00,1000.00,7000.0,3500.0,4000.0))
    print validate(4207.5, determinarsueldo(3500.00,2000.00,3000.0,4500.0,5000.0))    
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarsueldo
  puts " "
end
test