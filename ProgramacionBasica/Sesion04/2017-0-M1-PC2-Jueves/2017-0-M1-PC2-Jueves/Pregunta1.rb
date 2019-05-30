def determinarnivel(escrito,oral)
 
end

def determinarprecio(escrito,oral)

end


#--- zona de test ----

def test_determinarnivel
    print validate(3, determinarnivel(96,76))
    print validate(2, determinarnivel(96,75))    
    print validate(1, determinarnivel(95,76))    
end

def test_determinarprecio
    print validate(400, determinarprecio(96,76)) 
    print validate(250, determinarprecio(96,75)) 
    print validate(150, determinarprecio(95,76)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarnivel
  test_determinarprecio
  puts " "
end
test