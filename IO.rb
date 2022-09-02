#IO = Input /output entrada y salida 

#puts imprimir informacion en la terminal agregando un salto de linea
nombre = "Annie"
puts"hola #{nombre}"

#imprimir informacion en la terminal sin salto de linea

nombre = "Annie"
print "hola #{nombre}"

#saludo a cualquier persona agrega informacion 
print "dame tu nombre : " 
nombre = gets
#eliminar salto de linea o ultimo caracter
nombre = nombre.chomp
#la terminal espera a que le des la informacion 
puts"hola #{nombre}"
#cuenta el numero de letras que tiene el nombre
#cuantos caracteres tiene la cadena
puts "Tu nombre tiene #{nombre.length } letras"
