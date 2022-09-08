=begin 
Metodos 
lo que un objeto puede hacer 
lo que un objeto le dice a otro que quiere que haga

*metodo Next 
llama el siguiente valor
=end 
puts 1.next
#metodo method 
#llama a la instancia que necesito 
siguiente = 1.method('next')
puts siguiente.call

#definicion de nuevos metodos 
 class Perro
    def initialize()
    end
def ladrar  
#todo lo que esta despues de return no se ejecuta 
end

end