#clase perro 
class perro 
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