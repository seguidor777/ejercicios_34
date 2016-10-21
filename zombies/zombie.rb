class Zombie
  def initialize(x, y)
    @x = x
    @y = y
  end

  def walk
     @direction = ["x", "y"].sample

     if direction == "x"
       @x += 1
     elsif direction == "y"
       @y += 1
     end
  end

  def to_s
    "#{@x}, #{@y} braiiiiins"
  end
end
