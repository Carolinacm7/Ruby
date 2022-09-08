#Alcance o scope variables en un bloque
#un bloque hereda el contexto de donde ejecutado 

#definimos el metodo que solo mande llamar el bloque 
def hola
    yield
end
#definimos el nombre
nombre ="Annie"
#la variable no fue ejecutada dentro del bloque 
#el bloque tiene acceso por que recibe las variables locales 
#de donde se esta ejecutando 
hola{puts "Hola #{nombre}"}