#como los metodos tambien pueden recibir bloques 
#defino el metodo 
def hola
end
#y el metodo va arecibir un bloque que diga hola Annie
hola {puts "Hola Uriel"}
#para llamar el bloque en el metodo usamos palabra reservada yield
def hola
    yield
end
hola {puts "Hola Annie"}
#tambien se puede ejecutar con do 
def hola
    yield
end
hola do
    puts "Hola Annie" 
end
=begin 
yield es el punto de la definicion del metodo donde
 se ejecuta el bloque recibido
si el bloque esta vacio envia un error que dice que
yield no tiene ningun bloque para ejecutar 
=end
def hola
    yield
end
hola()
#block_given? dara verdadero si recibio un bloque 
#condicionandolo para que solo ejecute cuando halla un bloque 
#y de un espacio vacio cuando no tenga nada
def hola
    yield if block_given?
end
hola()
#de esta manera no genera error y verifica que tenga informacion el bloque
def hola
    yield if block_given?
end
hola {puts "Hola Annie"}

#