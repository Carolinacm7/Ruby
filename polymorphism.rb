#multiples objetos respondan de maneras distintas al mismo mensaje 

class Video 
    def play
    end 
end 

class Vimeo < Video
    def play
        p "inserta el reproductor de vimeo"
    end 
end

class YouTube < Video 
    def play 
        p "insertar el repreoductor de YouTube"
    end 
end

videos = [YouTube.new, Vimeo.new, Vimeo.new, YouTube.new,YouTube.new]

videos.each do |video|
video.play 
end

#sin importar que son clases diferentes ejecuto solo play que seria el polimorfismo 
