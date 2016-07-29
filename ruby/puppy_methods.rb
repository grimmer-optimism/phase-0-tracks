class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
   p answer = human_years.to_i * 7
  end

  def eat_shoes
    puts "Goddamn it, not again!"
  end

end

phido = Puppy.new
phido.fetch("ball")
phido.speak(3)
phido.roll_over
phido.dog_years(5)
phido.eat_shoes


class Car

  def initialize(model, year)
  puts "Initializing new #{year} #{model} instance..."
  @model = model
  @year = year
  end

  def accelerate(speed)
    if speed > 65
      puts "Slow down Maniac!"

    elsif speed < 40
      puts "Speed up grandma"

    else
      puts "continue at your current speed"
    end
  end

  def service(years_old)
    if years_old >= 1
      puts "Take it in for a tune-up"
    else
      puts "Keep on rolling!"
    end
  end

end

corvette = Car.new("Z06", 2016)
corvette.accelerate(75)
corvette.service(0.5)

cars = []

50.times do |car|
  cars << Car.new("corvette", 1966)

end

 cars.each do |car|
   car.accelerate(66)
   car.service(2)
 end
