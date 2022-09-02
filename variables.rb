#para separar nombre del variable utilizar _ ejm:
nombre_del_ejemplo = "correcto"
#si voy a realizar una operacion ambos tienen que ser numeros genera error si no es asi 
class HolaMundo
    def initialize()
    end
    def saluda()
        #necesitamos que este valor sea un numero no un texto
        nombre = "1" 
        #relizamos cambio de texto a numero entero  to_i
        nombre = nombre.to_i
        # o si quiero que sea un numero decimal o flotante to_f
        nombre = nombre.to_f
        # o si quiero que sea un texto o cadena to_s
        
        valorDos = 2
        valorDos = valorDos.to_s
        puts nombre + valorDos
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()

#para crear un avariable global añadimos $
#generalmente no se usa por que puede modificar otras clases 
$ejemplo = "hola codigo global"

class HolaMundo
    def initialize()
    # variable de instancia solo la puedo usar dentro de la clase 
    @ejemplo ="Soy una Variable de instancia"
    $ejemplo ="fui modificado"
    end
    def saluda()
        #solo se usa en la clase que fue creada  
        ejemplo ="soy una variable local"
        #puts= escribe en la pantalla lo que sea que escribamos 
        puts ejemplo
        puts @ejemplo
        puts $ejemplo
    end
end
objeto = HolaMundo.new()
objeto.saluda
gets()