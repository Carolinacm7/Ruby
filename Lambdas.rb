#forma de agrupar codigo
#funciones sin nombre 
#se pueden asignar a variables para usarlas 
#para crearla usamos la palabra reservada lambda
#y despues un bloque {} define el cuerpo de lo que se esta declarando 
lambda{puts"Hola Mundo"}
#por ejemplo imprimir hola mundo 
#aqui ya tenemos un metodo sin un nombre asignado 
#para ejecutar un lambda se llamar el metodo con call
lambda{puts"Hola Mundo"}.call
#de esta manea estamos mandando llamar la funcion que estamos definiendo 
#para leer mejor el codigo podemos guardarla en una variable 
miLambda =lambda{puts"Hola Mundo"}
#y despues mandar a llamar la funcion 
#de manera alternativa se puede usar la sintaxis de flecha para declarar 
#una lambda asi ->() y es lo mismo que usar la palabra lambda
miLambda =->(){puts"Hola Mundo"}
miLambda.call
#las lambdas se comportan igual que un metodo tiene argumentos
# y tienen que cumplirse 
#generan error
miLambda =->(nombre){puts"Hola #{nombre}"}
miLambda.call("Annie")

class HolaMundo
    def initialize()
    end
def saluda()
    lamb =lambda {"Hola mundo"}
    #para ejecutar la funcion usamos metodo call
        puts lamb.call
    end
end 
objeto = HolaMundo.new()
objeto.saluda
gets()

#para recibir un parametro 
class HolaMundo
    def initialize()
    end
def saluda()
    #aqui recibe el parametro 
    lamb =lambda {|numero|numero+1}
    #cuando se llama añado el parametro en este caso numero
        puts lamb.call(9)
    end
end 
objeto = HolaMundo.new()
objeto.saluda
gets()

#para crear un metodo de mas de un alinea se usa Do
class HolaMundo
    def initialize()
    end
def saluda()
#aqui recibe el parametro 
    lamb =lambda do|nombre|
    if nombre == 'Uriel'
#se usa return cuando deseo que devuelva mas de un dato en una funcion 
        return'Hola Uriel'
    else 
        return 'Hola anonimo'
    end
    end
    #
        puts lamb.call('Carlos')
    end
end 
objeto = HolaMundo.new()
objeto.saluda
gets()
#en este caso me retorna 'Hola Anonimo'