=begin 
valor de datos donde cada valor esta asociado a una llave
Imagina un diccionario,
en donde las palabras son las llaves y las definiciones son los valores.
no puede haber llaves o indices repetidos(con mismo nombre)

=end
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
#para imprimir la info en la consola escribo la llave y me da los valores
#en medio de parentesis []
puts lampara[0]
#para añadir informacion seria asi:
#añado la nueva llave y luego su valor 
lampara[3] = "averiado"
puts lampara[3]
#resultado : averiado
#cuando intentamos acceder a un valor que no existe nos devuelve nulo 
#a menos de que le de una propiedad a default de la sig manera 
lampara.default =":D" 
puts lampara[5]
#resultado : :D

#los simbolos tiene : al inicio
#se pueden usar para que los hashes se vean con json 
lampara = { "0":"encendido", "1":"apagado", "2":"fundido" }
#para imprimir en la consola tengo que usar los simbolos para que se visualice
puts lampara[:"0"]
#resultado = encendido 
puts lampara
#resultado lampara ={0 : "encendido", 1 : "apagado", 2 : "fundido"}

#para iterar cada valor seria asi:
lampara ={0 => "encendida", 1 => "apagada", 2 => "fundida"}

lampara.each do |clave,valor|
    puts "la lampara en #{clave} se encuentra #{valor}"
end
=begin 
resutado:
la lampara en 0 se encuentra encendida
la lampara en 1 se encuentra apagada
la lampara en 2 se encuentra fundida
=end