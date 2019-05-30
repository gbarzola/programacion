
# Desarrolle una función que permita insertar un nodo en una posición determinada de una lista doblemente enlazada. 
# Agregue un test para probar dicha inserción

def imprimirLista(lista)
    cont = 0
    nodoTemp = lista
    while(nodoTemp!=nil)
        puts nodoTemp[1]
        nodoTemp = nodoTemp[2]
    end
end

def insertarPosicion(lista,pos,valor)
    anterior = nil
    nodo = [nil, valor, nil]
    if (pos==1)
        nodo[2] = lista
        lista = nodo
    else
        cont = 1
        while(pos!=cont)
            anterior = lista
			nodo = nodo[2]
			cont = cont + 1
		end
        lista = anterior
    end
    return lista
end

def test
    n1 = [nil,1,nil]
    n2 = [nil,2,nil]
    n3 = [nil,3,nil]
    n1[2] = n2
    n2[0] = n1
    n2[2] = n3
    n3[0] = n2
    #lista 1
    lista = n1
    imprimirLista(lista)
    lista = insertarPosicion(lista,2,6)
    puts "nueva lista : " 
    imprimirLista(lista)
end

test
