class Parent
  def say_hi
    p "Hi from Parent."
  end

  def send
    p "Hi from Child."
  end
end

Parent.superclass       # => Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def instance_of?
    p "I am a fake instance"
  end
end

# child = Child.new
# child.say_hi         # => "Hi from Child."

# son = Child.new
# son.send :say_hi       # => "Hi from Child."

# lad = Child.new
# lad.send :say_hi

# c = Child.new
# c.instance_of? Child      # => true
# c.instance_of? Parent     # => false

heir = Child.new
heir.instance_of? Child