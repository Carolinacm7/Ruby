=begin 
las propiedades se identifican por variables de instancias 
identificadores que le pertenecen al objeto y no a la clase 
=end
class Tutor
    def initialize(name)
        #variable de clase @
        @nombre = name #propiedad del objeto 
#imprimimos los nombres despues de crear los objetos uriel y annie
    puts @nombre
    end 
    #se puede acceder a ellas desde de cualquier parte del objeto 
    #no importa si se declara en un metodo y lugo la usas en otra
    def say_my_name
        puts @nombre
    end
end

#dos objetos con instancia de la misma clase 
uriel = Tutor.new("Uriel")
annie = Tutor.new ("Annie")

uriel.say_my_name
annie.say_my_name
=begin 
las variable de instacia no pueden ser modificadas o observadas
desde fuera del objeto no podemos leerlas o acceder al objeto 
amenos que se realice dentro del objeto 
puts uriel.nombre
puts annie.nombre
=end

#Metodos Accesores
=begin
para modificar propiedades del objeto 
=end
class Tutor
    def initialize(name)
            @nombre = name 
    end 
    
    def get_nombre
        #sirven para leer propiedades 
        @nombre
    end
    
    def set_nombre(nombre) 
        #sirve para asignar o modificar una propiedad
        @nombre = nombre
    end
    end
    
    uriel = Tutor.new("Uriel")
    annie = Tutor.new ("Annie")
    
    puts uriel.get_nombre
    
    uriel.set_nombre("Andres")
    
    puts uriel.get_nombre

#la sintaxis correcta de set y get es :
class Tutor
    def initialize(name)
        @nombre = name 
    end 

#def get_nombre el get se ve igual que el nombre de la propiedad 
def nombre
    #sirven para leer propiedades 
    @nombre
end

#def set_nombre(nombre) el set se usa es con igual 
def nombre=(nombre)
    #sirve para asignar o modificar una propiedad
    @nombre = nombre
end
end

uriel = Tutor.new("Uriel")
annie = Tutor.new ("Annie")

puts uriel.nombre
uriel.nombre = "Andres"
puts uriel.nombre

#para no escribirlo uso los sig metodos accsesores
#metodo :propiedad
#define el get and set
attr_accessor
#define el get 
attr_reader
#define el  set
attr_writer

#ejemplos 
class Tutor
    attr_accessor :nombre
        def initialize(name)
            @nombre = name 
        end 
    end
    
    uriel = Tutor.new("Uriel")
    annie = Tutor.new ("Annie")
    
    puts uriel.nombre
    uriel.nombre = "Andres"
    puts uriel.nombre
    
    









