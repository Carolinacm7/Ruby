=begin 
Las cadenas se componen de una secuencia arbitraria de bytes 
(normalmente caracteres)
y se inicializan y manipulan como cualquier otro objeto. 
Aunque puede usar String.new(...)para crear una cadena
es mas comun  usar un literal

Los literales más comunes son
las comillas simples y dobles ( '...'y "...").
Las comillas simples no permiten la interpolación,
mientras que las comillas dobles sí.
La interpolación es donde una cadena se incluye 
en otra usando la #{}sintaxis.

También puede usar otros literales, como
%{... }cadenas interpoladas
y cadenas %q{...}no interpoladas. 
Estos son útiles si sus cadenas tienen los caracteres 'o "en ellos.
=end
# Find the first index of a character
my_string.index('m') 
#concatenacion de variables
class HolaMundo
    def initialize()
    end
    def saluda()
        resultado = 2+3   
    print "la suma de 2 + 3 = #{resultado}"
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()
#concatenacion de dos cadenas 
class HolaMundo
    def initialize()
    end
    def saluda()
        cadena = "Hola " 
        # se agrega en la parte de atras despues del hola
        cadena << "Mundo"
print cadena
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()
#porpiedad de concat para añadir simbolos con codigo ascci

class HolaMundo
    def initialize()
    end
    def saluda()
        cadena = "Hola " 
        # se agrega en la parte de atras despues del hola
        cadena << "Mundo"
        cadena.concat(33)
print cadena
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()
#multiplicacion de cadena de texto 
class HolaMundo
    def initialize()
    end
    def saluda()
        cadena = "ja" * 10
print cadena
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()

#comparacion de dos cadenas 

class HolaMundo
    def initialize()
    end
    def saluda()
        cadenaUno = "Hola"
        cadenaDos = "Hol"
        #me  muestra un valor de 1 por que la primera cadena es mayor que la segunda
        #si muestra un valor de 0 es por que los valores son iguales 
        #es sencible a mayusculas y minusculas 
        print resultado= cadenaUno <=> cadenaDos
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()

# metodo capitalize para que promera letra sea mayuscula
class HolaMundo
    def initialize()
    end
    def saluda()
        nombre = "annie"
        nombre = nombre.capitalize 
        print nombre
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets() 

#separacion de cadena por cada una de las letras 

class HolaMundo
    def initialize()
    end
    def saluda()
    cadena = "Bienvenido"
    cadena.each_char{|c| print c 
print "\n"}
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets() 

#exercise 
=begin 
Implemente el LogLineParser#messagemétodo
para devolver el mensaje de una línea de registro:

LogLineParser.new('[ERROR]: Invalid operation').message
"Invalid operation"

Cualquier espacio en blanco inicial o final debe eliminarse:
LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# => "Disk almost full"
=end
class LogLineParser
    def initialize(line)
    @line = line
    end

    def message
  #lo que hay dentro // se sustituye por información vacía 
  #what is inside // is replaced by empty information 
    return @line.gsub(/\[[A-Z]*\]: / ,"").strip
    end

=begin
Implemente el LogLineParser#log_levelmétodo 
para devolver el nivel de registro de una línea de registro,
que debe devolverse en minúsculas:

LogLineParser.new('[ERROR]: Invalid operation').log_level
"error"
=end
    def log_level
#especifica la posición en la cadena para comenzar la búsqueda.
#class method which match the regular expression with the string and specifies the position in the string to begin the search.
    return @line.match(/\[(.*?)\]/)[1].downcase
    end
=begin 
Implemente el LogLineParser#reformatmétodo que reformatea 
la línea de registro, colocando el mensaje primero y
el nivel de registro después entre paréntesis:

LogLineParser.new('[INFO]: Operation completed').reformat
"Operation completed (info)"
=end
    def reformat
    # el operador #{}la sustitución de expresiones dentro de un literal de cadena
    #The #{} operator technically performs expression substitution inside a string    literal
        return "#{message} (#{log_level})"
    end
end

LogLineParser.new('[ERROR]: Invalid operation').message
LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
LogLineParser.new('[ERROR]: Invalid operation').log_level

=begin 
Con el uniqmétodo puede eliminar TODOS los elementos duplicados de una matriz.
Si tienes una matriz como esta :
=end 
n = [ 1 , 1 , 1 , 2 , 3 , 4 , 5 ]
=begin 
Donde 1se duplica el número.

con  uniq  esta matriz elimina los adicionales y
devuelve una NUEVA matriz con números únicos.
=end
n.uniq
# [1,2,3,4,5]
=begin 
Instrucciones
Determinar si una palabra o frase es un isograma.

Un isograma (también conocido como "palabra sin patrón") 
es una palabra o frase sin una letra repetida, sin embargo,
los espacios y los guiones pueden aparecer varias veces.

Ejemplos de isogramas:

lumberjacks
background
downstream
six-year-old
La palabra isograms , sin embargo, no es un isograma,
porque la s se repite.
=end
class Isogram
    def self.isogram?(word)
    #creo objeto palabra y le pregunto si es un isograma
        new(word).isogram?
    end
    def initialize(word)
    #inicializo la variable de word 
        @word = word
    end
    def isogram?
    #creo variable que verifica si es un isograma 
    #hay letras repetidas en la frase?
    #uso uniq para eliminar repetidos 
        letters == letters.uniq
    end
#uso metodo privado para dar especificaciones 
    private
    def letters
    #uso un array para que cada letra se vuelva minuscula 
        word.downcase.scan(/[a-z]/)
    end
#añado un accesor para leer la informacion de palabra 
    attr_reader :word
end
