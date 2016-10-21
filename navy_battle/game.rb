class Game
  def initialize
    # Require necessary files
    require_relative "navy.rb"
    require_relative "ship.rb"
    require_relative "part.rb"

    # Creates enemy navy, its ships and its parts
    @enemy_navy = Navy.new
    enemy_ship1 = Ship.new(@enemy_navy)
    enemy_ship1.add_part(Part.new(20, 30))
    enemy_ship1.add_part(Part.new(40, 50))
    @enemy_navy.add_ship(enemy_ship1)
    enemy_ship2 = Ship.new(@enemy_navy)
    enemy_ship2.add_part(Part.new(60, 70))
    enemy_ship2.add_part(Part.new(80, 90))
    @enemy_navy.add_ship(enemy_ship2)
  end
  
  def play
    while true
      puts "Introduce las coordenadas X Y, M para mostrar el mapa o Q para quitar el juego"
      arg1, arg2 = gets.chomp.split(" ")
      
      if arg1 == "M"
        @enemy_navy.print_damaged_parts
      elsif arg1 == "Q"
        exit
      elsif arg1 and arg2
        @enemy_navy.hit_part(arg1.to_i, arg2.to_i)
      end
    end
  end
end
