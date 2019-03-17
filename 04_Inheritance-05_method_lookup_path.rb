module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def Swimmable
    "I'm swimming."
  end
end

module Climbable
  def climb
    "i'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---Animal method lookup---"
puts Animal.ancestors

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

fido = Animal.new
fido.speak                  # => I'm an animal, and I speak!
fido.walk                   # => I'm walking.
fido.swim                   # => NoMethodError: undefined method `swim' for #<Animal:0x007f92832625b0>
