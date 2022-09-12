=begin 
Métodos singleton
se le asignan a un objeto no estan definidos dentro de una clase 
exporto la clase perro que esta en otro archivo
requiere_relative 'class_ejm.rb'
consiste en garantizar que una clase solo tenga una instancia y
proporcionar un punto de acceso global a ella
=end 

class Perro 
    def initialize(nombre = "sin nombre", raza = "sin raza")
        @nombre = nombre
        @raza = raza
    end 
    def ladrar 
        return "gua gua"
    end
    def dame_nombre
        return @nombre 
    end
    def dame_raza
        return @raza 
    end 
end

dog =Perro.new('Firulais','Chihuaha')
dogDos = Perro.new('skipy','snaucher')

puts dog 
puts dogDos
#metodo singleton 
#se usan para interfaces 
def dog.hablar 
    return 'Hola humano'
end

puts dog.hablar

#para verificar que esta el objeto singleton  puedo usar respond_to?
class Perro 
    def initialize(nombre = "sin nombre", raza = "sin raza")
        @nombre = nombre
        @raza = raza
    end 
    def ladrar 
        return "gua gua"
    end
    def dame_nombre
        return @nombre 
    end
    def dame_raza
        return @raza 
    end 
end
dog = Perro.new()
dogDos=Perro.new()
class << dog 
    def hablar 
        return"Gua Gua"
    end 
end 
#para verificar que esta el objeto singleton  puedo usar respond_to?
#en los parentisis añado el metodo que quiero verificar 
if dog.respond_to?(:hablar) then 
    puts dog.hablar 
else 
    "el perro no ladra"
end 
#si el objeto es diferente arrojara que el perro no ladra 
if dogDos.respond_to?(:hablar) then 
    puts dog.hablar 
else 
    puts  "el perro no ladra"
end 