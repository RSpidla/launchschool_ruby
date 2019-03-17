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
end

riviera = MyCar.new(1975, 'Buick Riviera GS', 'Dark Gray')

riviera.color = 'Dark Gray'
puts riviera.color
puts riviera.year

# riviera.year = 1972
# puts riviera.year


# riviera.speed_up(100)
# riviera.current_speed
# riviera.speed_up(20)
# riviera.current_speed
# riviera.brake(20)
# riviera.current_speed
# riviera.brake(20)
# riviera.current_speed
# riviera.shut_down
# riviera.current_speed