# Pregunta 03

# Una empresa desea calcular el sueldo de sus trabajadores
 
# Para ello se toma en cuenta las ventas realizadas por ellos.
 
# Ventas / Tipo
# A
# B
# Desde 0 hasta 1200
# 10%
# 12%
# Entre 1201 y 5000
# 20%
# 25%
# Más de 5000
# 15%
# 30%
 
# Desarrollar un subprograma que permita calcular el porcentaje del bono y otro subprograma que permita calcular el sueldo con el bono del trabajador

def porcentaje_bono(ventas, tipo)
    if(ventas>=0 && ventas <=1200)
        if(tipo == "A")
            return 0.10
        elsif(tipo == "B")
            return 0.12
        end
    elsif (ventas>=1201 && ventas <=5000)
        if(tipo == "A")
            return 0.20
        elsif(tipo == "B")
            return 0.25
        end
    elsif(ventas>5000)
        if(tipo == "A")
            return 0.15
        elsif(tipo == "B")
            return 0.30
        end
    end
end

def bono(ventas, tipo, sueldo)
    return sueldo + sueldo * porcentaje_bono(ventas, tipo)
end
 
# #--- zona de test ----
# def test_porcentaje_bono
# 	print validate(0.1, porcentaje_bono(300,'A'))
# 	print validate(0.25, porcentaje_bono(1500, 'B'))
# 	print validate(0.15, porcentaje_bono(6000, 'A'))
# 	print validate(0.3, porcentaje_bono(6000, 'B'))
# 	print validate(0.10, porcentaje_bono(1200, 'A'))
# end
# def test_bono
# 	print validate(1100.0, bono(300,'A',1000.0))
# 	print validate(6250.0, bono(1500, 'B',5000.0))
# 	print validate(9900.0, bono(1200, 'A', 9000.0))
# 	print validate(1300.0, bono(6000, 'B',1000.0))
# 	print validate(896.0, bono(920, 'B', 800.0))
# end
# def validate (expected, value)
#  expected == value ? "." : "F"
# end

def test
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  	puts bono(300,'A',1000.0)
	puts bono(1500, 'B',5000.0)
	puts bono(1200, 'A', 9000.0)
	puts bono(6000, 'B',1000.0)
	puts bono(920, 'B', 800.0)
  puts " "
end
test
