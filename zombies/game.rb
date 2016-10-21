class Game
  attr_reader :zombies

  def initialize
    @zombies = []
  end

  def prepare
    require_relative "zombie.rb"
    # Read zombies_data.txt file
    File.open("zombies_data.txt").readlines.each do |line|
      x, y = line.strip.split(" ")
      @zombies << Zombie.new(x, y)
    end
  end
end
