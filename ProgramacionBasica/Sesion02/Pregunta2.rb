def determinarcajas(largo,ancho,alto,capacidad)

end 
#--- programa principal---
#--- zona de test ----

def test_determinarcajas
    print validate(271111, determinarcajas(0.50,0.30,0.05,1525))
    print validate(102564, determinarcajas(0.65,0.40,0.10,2000))
    print validate(58333, determinarcajas(0.80,0.50,0.20,3500))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarcajas
  puts " "
end
test
