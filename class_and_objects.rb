=begin
POO programacion orientada a objetos 
principales conceptos 
clases:
una clase define atributos,metodos,campos y eventos
-cuando se define una clase la primera letra es en mayuscula
y se maneja con camelcase 

objetos:contienen la informacion de cada uno
atributos,metodos,campos y eventos
=end
class Video
    #atributo
    attr_accessor :minutes, :title
    
    def play
    end
    def pause
    end
    def stop 
    end
end
#creacion del objeto 
video_30_curso_ruby = Video.new
#este objeto puede modificar los atributos 
#sin modificar los otros objetos 
video_30_curso_ruby.title = "objetos y clases"
#objeto nuevo
video_31_curso_ruby = Video.new
video_31_curso_ruby.title = "Atributos"
#cada uno maneja supropio estado 
puts video_30_curso_ruby.title
puts video_31_curso_ruby.title = "Atributos"