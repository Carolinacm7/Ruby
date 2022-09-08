#metodos = grupos de codigo que se pueden reciclar }

#metodo que me devuelve el cuadrado de un numero 
def square(x)
    x*x
end
puts square(2)
#el metodo se inicia con palabra reservada 
def
# y despues se añade el nombre del metodo en este caso es
square()
#cuandoi recibe un argumento va dentro de parentesis 
square(x)
#en el centro ponemos la funcion que se desea ejecutar
x*x
#cuando terminamos de definir el metodo añadimos 
end 
#para saber que hay finaliza el codigo de nuestro metodo 

#se usa return cundo necesito una respuesta antes de que se acabe el metodo 
def square(x)
    return 0 unless x.is_a? Integer
    x*x
end
#si solo se tiene una funcion no se usa return 