module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
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
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  include Towable
  
  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{color}, #{year}, #{@model}!"
  end
end

car0 = MyCar.new('2010', 'Ford Focus', 'Silver')
car1 = MyCar.new('2018', 'Ford Focus ST Hatchback', 'Metalic Blue')
car2 = MyCar.new('2016', 'Ford Focus RS Hatchback', 'Sky Blue')
truck0 = MyTruck.new('2017', 'Chevy Silverado', 'Black')
truck1 = MyTruck.new('2018', 'Chevy Silverado', 'White')
truck2 = MyTruck.new('2019', 'Chevy Silverado', 'Gray')

puts car0
puts car1
puts car2
puts truck0
puts truck1
puts truck2

puts Vehicle.number_of_vehicles

puts truck0.can_tow?(4400)
puts truck1.can_tow?(400)