
def imprimirLista(lista)
	cont = 0
	nodoTemp = lista
	while(nodoTemp!=nil)
		puts nodoTemp[0]
		nodoTemp = nodoTemp[1]
	end
end

def crearLista(arreglo)
	ultimo = nil
	lista  = nil
	tamanio = arreglo.size
	for i in 0..tamanio-1
		nn = [arreglo[i], nil]
		if(lista == nil) # agregar al inicio
			lista = nn
			ultimo = nn
		else
			ultimo[1] = nn
			ultimo = nn
		end
	end
	return lista
end

def sumaSerie(num)
	cont = 0.00
	suma = 0.00
	while cont < num
		suma += (cont + 1)/(cont + 2)
		cont = cont + 1
	end
	return suma
end

def nDivisores(num) 
	cont = 1
	arreglo = Array.new
	while (cont != num)
		if (num % cont == 0)
			arreglo.push(cont)
		end
		cont = cont + 1
	end
	return crearLista(arreglo)
end


def tiempoDeuda(prestamo,i,amortizacion)
	monto = prestamo
	cont = 1
	while(monto > amortizacion)
		monto = (monto - amortizacion)*(1 + i/100)
		cont = cont + 1
	end
	return cont
end

def ultimaCuota(prestamo,i,amortizacion)
	monto = prestamo
	while(monto > amortizacion)
		monto = (monto - amortizacion)*(1 + i/100)
	end
	return monto
end

def test
    
    puts "Suma de la serie es :" + sumaSerie(2).to_s

	
	puts "Lista de divisores :"
	lista10 = nDivisores(125)
	imprimirLista(lista10)


	puts "El tiempo para pagar la deuda asumida es de :" + tiempoDeuda(3000,2,250).to_s + " meses."
	
	puts "La ultima cuota es :" + ultimaCuota(3000,2,250).to_s + " soles."
		
end

test
