class Card
  attr_accessor :suit, :number

  def initialize(number, suit)
    @number = number
    @suit = suit
  end
  
  def to_s
    "#{number} #{suit}"
  end
end
