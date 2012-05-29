# Slide: classes
class Person
  attr_accessor :name, :age
end

inkel = Person.new
inkel.name = "Leandro"
inkel.age  = 33

# Slide: modules
module Say
  def self.say
    "I'm a module!"
  end
end

# Slide: inheritance
class Animal
  attr_accessor :kind
end

class Human < Animal
  def initialize
    @kind = "Human"
  end
end

# Slide: extend/include
module Extend
  def de_clase
    "class method"
  end
end

module Include
  def de_instancia
    "instance method"
  end
end

class EI
  extend Extend
  include Include
end

# Slide: splats
def splats(*args)
  p [ args.length, args ]
end

# Slide: monkey patching
class String
  def greet
    "Hola #{self}!"
  end
end

# Slide: lambda
reverse_string_order = lambda {  |x, y|  y.to_s <=> x.to_s }
square = lambda { |n| n * n }
