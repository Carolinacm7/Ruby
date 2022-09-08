=begin
                alcance de un metodo o variable

->desde donde puedo llamar una variable o metodo

                Metodos de una clase 

publicos -> Public

*pueden llamarse desde cualquier lugar
*cuando no se especifica que metodo es por defecto es publico
=end 
class Humano 
    def initialize 
        self.publico
    end
    def publico
        puts "Soy Publico"
    end
end

class Tutor < Humano 
end
#manda a llamar el metodo publicosin ningun problema 
Humano.new
#si instanciamos un tutor iguall llamara sin problema 
Tutor.new.publico


=begin
privados -> Private

*solo pueden llmarse dentro de la clase ->una clase hija puede heredarlos
*pero desde fuera no funcionaria 
Si m es un método privado, deberá ser invocado implícitamente en self.


=end
class Humano 
    def initialize 
        privado
    end

    def publico
        puts "Soy Publico"
    end
    #si lo llamamos fuera de la clase genera un error
    #despues de  la palabra Private todos los elementos que se añadan
    #seran privados 
    #para visualizar mejor se recomienda identacion 
    private
        def privado 
            puts "soy privado"
        end
end

class Tutor < Humano 
    #el hijo tambien puede acceder a un metodo privado
    def initialize
        privado
    end
end

Humano.new



=begin 
protegidos -> Protected

*puede llamarse desde otras clases pero tiene que ser del mismo tipo
#no son tan comunes 

los métodos protected pueden ser invocados en cualquier objeto de la clase y
no requieren la invocación implícita via self
ni me deja visualizar en consola por lo que esta protegido 
=end
class Humano 

    def publico
        puts "Soy Publico"
    end

    private
        def privado 
            puts "soy privado"
        end
        #todo lo que este despues de esta linea estara protegido 
        protected
        class protegido 
            puts"soy protegido"
        end

end

class Tutor < Humano 
    def initialize
        #instancio un humano 
        @inner = Humano.new
    end

    def llamar_protegido
        @inner.protegido
    end
end
#creo un nuevo metodo 

class Alien
def initialize
#llamo otro humano 
@inner = Humano.new
end
def llamar_protegido
    @inner.protegido
end
end
#guardamos en variables 
tutor = Tutor.new
tutor = Alien.new

#vamos a preguntar si el alien es humano 
puts alien.is_a?(Humano)