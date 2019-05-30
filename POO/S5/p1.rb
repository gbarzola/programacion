# Ejercicio 01

# Ud ha sido seleccionado para construir un programa orientado a objetos para una empresa de taxis. 
# Esta empresa está considerando expandir sus servicios a una nueva parte de la ciudad, trabaja con taxis 
# como con transportes de tipo traslado viajeros. Los taxis dejan a los pasajeros en el destino deseado antes 
# de admitir nuevos pasajeros, mientras que los traslados viajeros pueden recoger a distintos pasajeros en 
# distintas ubicaciones para realizar un mismo viaje (por ejm recojo en diversos hoteles para llevarlos al aeropuerto).
# Basándose en las estimaciones del número de clientes potenciales en la nueva área de la ciudad, la empresa quiere saber 
# si una expansión le resultaría rentable y cuantos vehículos necesitaría para poder operar de manera efectiva.
 
# El Administrador del sistema, quiere saber en todo momento lo siguiente:
# Que se le notifique como van desempeñándose los taxis, para ello necesita saber en qué momento se encuentra un taxi libre.
# Que sepa en qué ubicación recoge un pasajero.
# Que sepa hacia dónde se dirige el pasajero.
# Que sepa en qué momento se libera el taxi.
# Que sepa el listado de pasajeros  y sus ubicaciones en donde recoger a los pasajeros a trasladar al aeropuerto .
# Que sepa en qué momento recoge a un pasajero que se trasladara al aeropuerto.
# Que sepa en qué momento el transporte tiene a todos los pasajeros para trasladarlos al aeropuerto .
# Que sepa el total de taxis que se encuentran recogiendo pasajeros.
# Que sepa el total de taxis que se encuentran recogiendo pasajeros para trasladarlos al aeropuerto.
# Que la empresa de taxis pueda registrar a los choferes de sus vehículos.
 
# Aplique Herencia, Polimorfismo para completar la solución en caso de ser necesario.


class Taxi
    attr_accessor :ubicacion_actual_taxi, recoge_pasajero
    def initialize
        @ubicacion_actual_taxi = ubicacion_actual_taxi
        @recoge_pasajero = recoge_pasajero
    end
    
    def taxi_disponible_u_ocupado
        if(ubicacion_actual_taxi == ubicacion_actual_pasajero && recoge_pasajero == true && toma_taxi == true)
            return "ocupado"
        else
            return "disponible"
        end
    end
    
end

class Pasajero
    attr_accessor :ubicacion_actual_pasajero, :destino_final_pasajero, toma_taxi
    def initialize
        @ubicacion_actual_pasajero = ubicacion_actual_pasajero
        @destino_final_pasajero = destino_final_pasajero
        @toma_taxi = toma_taxi
    end
end

class Chofer
    attr_accessor :nombre_chofer
    def initialize
        @nombre_chofer = nombre_chofer
    end
end

class Administrador
    attr_accessor :arreglo_taxis, :arreglo_pasajeros, :arreglo_choferes
    def initialize
        @arreglo_taxis = []
        @arreglo_pasajeros = []
        @arreglo_choferes = []
    end
end