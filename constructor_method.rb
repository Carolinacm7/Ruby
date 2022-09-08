class SoyObjetoLoJuro
    #variable de instancia 
    @nombre_clase ="SoyObjetoLoJuro"
    #metodos de clase o estaticos 
    #self es el objeto de la clase 
    #el metodo le pertenece a la clase 
def self.nombre_clase
@nombre_clase
end
end

#añadimos clase y objeto para visaulizar
puts SoyObjetoLoJuro.nombre_clase

#tambien podemos añadir el objeto de la clase de la sig manera 
class SoyObjetoLoJuro
    @nombre_clase ="SoyObjetoLoJuro"

class << self

def nombre_clase
@nombre_clase
end
end
end
puts SoyObjetoLoJuro.nombre_clase