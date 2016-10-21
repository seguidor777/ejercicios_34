class Part
  attr_reader :x, :y
  attr_accessor :damaged

  def initialize(x, y)
    @x = x
    @y = y
    @damaged = false
  end
end
