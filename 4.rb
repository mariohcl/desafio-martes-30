class Dog

  def initialize(propiedades) #Iniciamos el constructor
    @name = propiedades[:nombre]
  end

  def ladrar #generamos metodo ladrar
    puts "#{@name} está ladrando"
  end

end


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
perro.ladrar
