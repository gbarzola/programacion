# Pregunta 2
	
# Una empresa de venta de equipos electrodomésticos como plan de mejora continua 
# desea implementar el pago de comisiones, algo que nunca se había estar realizando. 
# Todo el personal de ventas gana 1500 soles como sueldo base. 
# De acuerdo a las ventas realizadas se desea calcular un valor adicional mensual para incentivar el aumento de las ventas.
# Para ello hay que considerar el tiempo que el vendedor viene laborando en la empresa y el rango de las ventas realizadas.
# El siguiente cuadro muestra la información necesaria para poder realizar el cálculo:

# 	Ventas			
# Años de Servicio	1000 a 2500 soles	2501 a 5000 soles	5001 a 10000 soles	Más de 10000 soles
# 1 a 4				2%		3%		4%		5%
# 5 a 10			2.5%	3.5%	4.5%	5.5%
# 11 a 15			3%		4%		5%		6%
# Más de 15 años	5%		6%		7%		8%

# Realizar un subprograma que calcule el monto total a pagar a fin de mes a un vendedor. 


def CalcularComision(tiempoServicio,ventas)
  if(tiempoServicio>=1 && tiempoServicio<=4)
	if(ventas>=1000 && ventas<=2500)
		return 0.02*ventas
	elsif(ventas>=2501 && ventas<=5000)
		return 0.03*ventas
	elsif(ventas>=5001 && ventas<=10000)
		return 0.04*ventas
	elsif(ventas>10000)
		return 0.05*ventas
	end
  elsif (tiempoServicio>=5 && tiempoServicio<=10)
  	if(ventas>=1000 && ventas<=2500)
		return 0.025*ventas
	elsif(ventas>=2501 && ventas<=5000)
		return 0.035*ventas
	elsif(ventas>=5001 && ventas<=10000)
		return 0.045*ventas
	elsif(ventas>10000)
		return 0.055*ventas
	end
  elsif (tiempoServicio>=11 && tiempoServicio<=15)
  	if(ventas>=1000 && ventas<=2500)
		return 0.03*ventas
	elsif(ventas>=2501 && ventas<=5000)
		return 0.04*ventas
	elsif(ventas>=5001 && ventas<=10000)
		return 0.05*ventas
	elsif(ventas>10000)
		return 0.06*ventas
	end
  elsif (tiempoServicio>15)
	if(ventas>=1000 && ventas<=2500)
		return 0.05*ventas
	elsif(ventas>=2501 && ventas<=5000)
		return 0.06*ventas
	elsif(ventas>=5001 && ventas<=10000)
		return 0.07*ventas
	elsif(ventas>10000)
		return 0.08*ventas
	end
  end
end



def test
puts "Test de prueba del programa"
puts "---------------------------"
puts CalcularComision(4,20000)
puts CalcularComision(8,20000)
puts CalcularComision(12,20000)
puts CalcularComision(16,20000)


puts ""
end

test