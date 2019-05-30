def obtenerMillasMes(tipoTarjeta,comprasMes)
	case tipoTarjeta
		when "Blue"
			return (comprasMes/100)	
		when "Gold"
			return ((comprasMes/100)*2) 
		when "Black"
			return ((comprasMes/100)*3)
		else
			return 0
	end
end

def obtenerBonoMillas(tipoTarjeta,comprasMes)
	case tipoTarjeta
		when "Blue"
			if comprasMes>40000
				return 0.10
			elsif comprasMes>20000
				return 0.05
			else
				return 0
			end		
		when "Gold"
			if comprasMes>40000
				return 0.15
			elsif comprasMes>20000
				return 0.10
			else
				return 0
			end
		when "Black"
			if comprasMes>100000
				return 0.25
			elsif comprasMes>40000
				return 0.20
			elsif comprasMes>20000
				return 0.15
			else
				return 0
			end
		else
			return 0
	end
end

def obtenerTotalMillas(tipoTarjeta,comprasMes)
	millas=obtenerMillasMes(tipoTarjeta,comprasMes)
	bono=obtenerBonoMillas(tipoTarjeta,comprasMes)
	return (millas*(1+bono)).round(2)
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
