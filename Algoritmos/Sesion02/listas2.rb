def imprimirLista(lista)
	cont = 0 # contador inicial
	nodoTemp = lista # asigna la lista de nodos a nodo T
	while(nodoTemp!=nil)
		puts nodoTemp[0]
		nodoTemp = nodoTemp[1] # nuevo valor del nodo T
	end
end

def tamanioLista(lista)
	cont = 0 # contador inicial
	nodoTemp = lista # asigna la lista de nodos a nodo T
	while(nodoTemp!=nil)
		nodoTemp = nodoTemp[1] # nuevo valor del nodo T
		cont = cont + 1 # contador
	end
	return cont
end

def insertarInicio(lista,valor)
	nn = [valor, nil]
	nn[1] = lista
	if(lista !=nil)
		lista = nn
	end
	return nn
end

def insertarFin(lista, valor)
	if(lista == nil)
		lista = [valor, nil]
	else
		nodoTemp = lista
		while(nodoTemp[1]!=nil)
			nodoTemp = nodoTemp[1]
		end
		nodoTemp[1] = [valor, nil]
	end
	return lista
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

def maxValorLista(lista)
	temp = lista
	tamanio = lista.size
	for i in 0..tamanio
		for j in i+1..tamanio
			if( temp[i] > temp[j])
				temp = temp[i]
                temp[i] = temp[j]
                temp[j] = temp
            end 
		end
	end
	return temp[0]
end




def test
	n1 = [1,nil] # nodo
	n2 = [2,nil] # nodo
	n3 = [3,nil] # nodo
	n1[1] = n2
	n2[1] = n3
	
	#lista 1
	lista = n1
	imprimirLista(lista)
	lista = insertarInicio(lista, 0)
	puts "el tamanio: " + tamanioLista(lista).to_s

	#lista 2
	lista2 = nil
	lista2 = insertarInicio(lista2, 20)
	puts "el tamanio: " + tamanioLista(lista2).to_s	

	
	lista3 = crearLista([10,20,30])
	imprimirLista(lista3)
	
	#lista 4
	lista4 = crearLista([20,5,13,22,99,54,100,10,20,30])
	puts "el maximo: " + maxValorLista(lista4).to_s	
	
	
end
test
