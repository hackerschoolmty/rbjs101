# Modules
# Encapsulates behaviour

module Area

  PI = 3.1416

  def self.square(n)
    n * n
  end

  def self.rectangle(a,b)
    a * b
  end

  def self.circle(r)
    PI * r * r
  end

end

Area.square(10) # 100
Area.rectangle(10,5) #50
Area.circle(5) # 78.54

# Classes
# Attributes: State

class Person
  # initialize sets up attributes for a new object
  def initialize(name, lastname)
    @name = name
    @lastname = lastname
  end
end

# Create an object
kuri = Person.new('Abraham', 'Kuri')
puts kuri.inspect # #<Person:0x007fd6399e0540 @name="Abraham", @lastname="Kuri">

# Access attributes
# Manipulate state of the object
class Dog
  attr_reader     :age    # Crea solo metodo de lectura
  attr_writer     :name   # Crea solo metodo de escritura
  attr_accessor   :owner  # Crea ambos metodos
  
  def initialize()
    @age = 0 
  end
end

# A dog is born
dog = Dog.new

# Access/Manipulation of attributes
dog.name = 'Fido'
dog.owner # => nil
dog.owner = kuri
dog.owner # => #<Person:0x007fd6399e0540>

# Instance Methods
# Behaviour of the object
class Cat
  def kick
    puts 'miaou [Please dont kick me]'
  end
end

cat = Cat.new
cat.kick # => miaou [Please dont kick me]

# Class Methods
# Bahaviour of the class
class Horse
  
  def initialize(name)
    @name = name
  end
  
  def self.info
    'Big Animal'
  end
  
  def info
    "#{Horse.informacion} named #{@name}" 
  end
  
end

horse = Horse.new('London')
puts Horse.info # => Big Animal
puts horse.info # => Big Animal named London
  