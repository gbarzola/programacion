def calcularsueldoneto(basico,horasextras)

end

#--- zona de test ----

def test_calcularsueldoneto
    print validate(1481.8, calcularsueldoneto(1000.00,20))
    print validate(2354.8, calcularsueldoneto(2000.00,10))
    print validate(3315.1, calcularsueldoneto(3000.00,5))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularsueldoneto
  puts " "
end
test
