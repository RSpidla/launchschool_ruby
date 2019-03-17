class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

riviera = MyCar.new(1975, 'Buick Riviera GS', 'Dark Gray')
riviera.color = 'Dark Gray'
puts riviera.color
puts riviera.year

MyCar.gas_mileage(13, 351)

riviera.spray_paint('Purple')
puts riviera.color

riviera.speed_up(100)
riviera.current_speed
riviera.speed_up(20)
riviera.current_speed
riviera.brake(20)
riviera.current_speed
riviera.brake(20)
riviera.current_speed
riviera.shut_down
riviera.current_speed

my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car  # => My car is a silver, 2010, Ford Focus.

## Note the "puts" calls "to_s" automatically.