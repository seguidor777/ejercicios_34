class Ship
  attr_reader :parts
  attr_reader :size
  attr_accessor :sinked

  def initialize(navy)
    require_relative "part.rb"
    @navy = navy
    @size = 0
    @sinked = true
    @parts = []
  end

  def add_part(part)
    exists = false

    @navy.ships.each do |ship|
      ship.parts.each do |ship_part|
        if part.x == ship_part.x and part.y == ship_part.y
          exists = true
          break
        end
      end

      break if exists
    end

    unless exists
      @parts << part
      @size += 1
      @sinked = false
      @navy.alive = true
    end
  end
end
