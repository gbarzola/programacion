def crear_lista
    print "Nombre de la lista? "
    nombre = gets.chomp
    hash = { "name" => nombre, "items" => Array.new } 
    return hash    
end

def agrega_item_lista
  print "Cual es el item? "
  nombre_item = gets.chomp

  print "Cuantos? "
  cantidad = gets.chomp.to_i

  hash = { "nombre" => nombre_item, "cantidad" => cantidad }
  return hash
end

def imprime_lista(lista)
    puts "Lista: #{ lista['nombre']}"
    puts "-------"
    
    lista['items'].each do |i|
        puts "Item : " + i['nombre']
        puts "Cantidad: " + i['cantidad'].to_s
        puts "-------"
    end
end

def separador (caracter = "-")
    puts caracter * 80
end

lista = crear_lista()

puts "Great! Add some items to your list."

lista['items'].push(agrega_item_lista())
lista['items'].push(agrega_item_lista())
lista['items'].push(agrega_item_lista())

puts "Here's your list:\n"
imprime_lista(lista)    