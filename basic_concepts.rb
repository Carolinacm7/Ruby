=begin 
Una ***variable*** puede hacer referencia a diferentes objetos
se puede definir y redefinir muchas veces
=end
my_first_variable = 1
my_first_variable = "Some string"
my_first_variable = SomeComplexObject.new

#las ***constantes*** deben asignarse una vez
MY_FIRST_CONSTANT = 10
=begin 
Ruby está organizado en ***clases***.
se definen utilizando la class
Los objetos generalmente se crean instanciando 
clases usando el .new método
=end
class Calculator
    #Define the class
end

# Create an instance of it and assign it to a variable
my_first_calc = Calculator.new
=begin
Las unidades de funcionalidad se encapsulan en métodos
***Un método*** se puede definir con argumentos posicionales
y/o argumentos de palabras clave **usando** la :sintaxis
devuelven implícitamente el resultado de la última 
declaración evaluada o  un objeto a través de la return 
métodos se **invocan** usando .sintaxis.
=end
class Calculator

# Unnamed params
def add(num1, num2)
    return num1 + num2 # Explicit return
end

# Named params
def multiply(num1:, num2:)
    num1 * num2 # Implicit return
end
end

calc = Calculator.new
calc.add(1, 3)
calc.multiply(num1: 2, num2: 5)