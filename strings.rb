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