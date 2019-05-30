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

def insertarInicio(lista,valor)
    nn = [nil, valor, nil]
    nn[2] = lista
    if(lista != nil)
        lista = nn
    end
    return nn
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
    lista = insertarInicio(lista, 6)
    puts "nueva lista : " 
    imprimirLista(lista)
end
test
