#Argumentos y valor retornado en bloque
class Usuario
    attr_accessor :nombre
    def saludar 
        yield(@nombre)
    end
end
    annie = Usuario.new
    annie.nombre = "Annie"
    #defino el metodo
    annie.saludar{|nombre| puts "Hola #{nombre}"}
    annie.saludar{|nombre| puts "Hi #{nombre}"}

    #los argumentos se enlistan separado por una coma
    annie.saludar{|nombre,argumento2,argumento3...| puts "Hola #{nombre}"}
    #un bloque puede retornar un valor 
    class Usuario
        attr_accessor :nombre
        def saludar_with
            saludo=yield(@nombre)
            puts saludo
        end
    end
        annie = Usuario.new
        annie.nombre = "Annie"
        #defino el metodo
        annie.saludar_with{|nombre| "Hola #{nombre}"}
        annie.saludar_with{|nombre| "Hi #{nombre}"}
    #los bloques no usan return 