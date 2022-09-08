#metodo constructor
#se ejecuta cuando creamos un objeto de una clase
#inicializa valores que el objeto va usar 
class Video
    #atributo
    attr_accessor :minutes, :title
    def initialize(title)
        #puede recibir argumentos
        self.title = title 
        puts "soy initialize"
    end
    def play
    end
    def pause
    end
    def stop 
    end
end
video_30_curso_ruby = Video.new("objetos y clases")