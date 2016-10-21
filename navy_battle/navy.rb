class Navy
  attr_reader :ships
  attr_accessor :alive

  def initialize
    require_relative "ship.rb"
    @alive = false
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
    ship
  end

  def print_damaged_parts
    @ships.each do |ship|
      ship.parts.each do |part|
        puts "Part from #{ship} at #{part.x} #{part.y} is damaged" if part.damaged
      end
    end
  end

  def hit_part(x, y)
    damaged = false

    @ships.each do |ship|
      ship.parts.each do |part|
        if x == part.x and y == part.y
          part.damaged = true
          damaged = true
          break
        end
      end

      if damaged
        damaged_parts_size = ship.parts.select { |p| p.damaged }.size
        
        if damaged_parts_size == ship.parts.size
          ship.sinked = true
          sinked_ships = @ships.select { |s| s.sinked }.size
          
          if sinked_ships == @ships.size
            @alive = false
            puts "Player 1 won the game!"
            gets
            exit
          end
        end

        break
      end
    end
  end
end
