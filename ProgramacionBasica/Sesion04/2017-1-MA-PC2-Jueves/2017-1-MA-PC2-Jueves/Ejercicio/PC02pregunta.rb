def obtenerMillasMes(tipoTarjeta,comprasMes)


end


def obtenerBonoMillas(tipoTarjeta,comprasMes)

end

def obtenerTotalMillas(tipoTarjeta,comprasMes)

end

#--- zona de test ----


def test_obtenerMillasMes
    print validate(150.00, obtenerMillasMes("Blue",15000.00))
    print validate(300.00, obtenerMillasMes("Blue",30000.00))
    print validate(700.00, obtenerMillasMes("Gold",35000.00))
    print validate(1200.00, obtenerMillasMes("Gold",60000.00))
    print validate(3600.00, obtenerMillasMes("Black",120000.00))
end

 
def test_obtenerBonoMillas
    print validate(0.00, obtenerBonoMillas("Blue",18000))

    print validate(0.05, obtenerBonoMillas("Blue",38000.00))

    print validate(0.10, obtenerBonoMillas("Gold",37000.00))

    print validate(0.15, obtenerBonoMillas("Gold",70000.00))

    print validate(0.25, obtenerBonoMillas("Black",110000.00))

end


def test_obtenerTotalMillas
    print validate(150.00, obtenerTotalMillas("Blue",15000))

    print validate(315.00, obtenerTotalMillas("Blue",30000.00))

    print validate(770.00, obtenerTotalMillas("Gold",35000.00))

    print validate(1380.00, obtenerTotalMillas("Gold",60000.00))

    print validate(4500.00, obtenerTotalMillas("Black",120000.00))

end



def validate (expected, value)
    expected == value ? "." : "F"

end


def test
    
puts "Test de prueba del programa"

    puts "---------------------------"

    test_obtenerMillasMes
    
test_obtenerBonoMillas
    test_obtenerTotalMillas
puts " "

end
test
